# -*- coding:UTF-8 -*-
class Default::TagsController < DefaultParentController

  def show
    @tag = Tag.find params[:id]
    @query = @tag.name
    @search_result = @tag.pages.order('updated_at desc').page(params[:page]).per(10)
    @total_count = @tag.pages.count
    set_subtitle "「#{@tag.name}」タグのページ"
    render 'shared/default/search'
  end

end
