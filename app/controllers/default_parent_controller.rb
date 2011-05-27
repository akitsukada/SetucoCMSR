class DefaultParentController < ApplicationController
  layout 'default/default'
  before_filter :loaddata_for_layout

  private
  def loaddata_for_layout
    # author infomation from config(application.rb)
    @author = SetucoCMSR::Application.config.author

    # version infomation from config(application.rb)
    @version = SetucoCMSR::Application.config.version

    # data from db
    @site = Site.find(1)
    @start_year = @site.open_date.strftime('%Y')
    @categories = Category.all
    @uncategorized = Page.uncategorized
    @tags = make_tag_cloud(PagesTag.counts_by_tag_id)
    @pages = Page.newer10

  end

  # タグクラウド関連のデータを取得
  def make_tag_cloud tags
    sort_tags_updated_desc(rank_tags(tags))
  end
  def rank_tags tags
    tags.sort!{|a,b| b.count <=> a.count}
    level = 1
    current_count = 0
    tags.each do |t|
      # cssのクラスがlevel1〜10なので10段階にレベル分け
      level += 1 if level < 10 && t.count < current_count
      t.level = level
      current_count = t.count
    end
    tags
  end
  def sort_tags_updated_desc tags
    tags.sort{|a, b| b.tag.updated_at <=> a.tag.updated_at}
  end

end
