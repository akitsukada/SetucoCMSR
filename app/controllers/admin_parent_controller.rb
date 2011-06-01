# -*- coding:UTF-8 -*-
class AdminParentController < ApplicationController
  layout 'admin'
  before_filter :init

  private
  def init

    # data from config
    @copyright_years = SetucoCMSR::Application.config.years
    @authors = SetucoCMSR::Application.config.authors

    # sidebar navigation
    @navi = YAML.load_file( File.join(
      Rails.root, 'config', 'navigation', "#{I18n.locale}.yaml"
    ))

    # data from db
    @site = Site.find(1)

    # login user
    @login_user = 'admin' # TODO: 実装する

  end

  #
  # 管理側ページのサブタイトルとパンくずリストにセットする。
  # 引数 subtitle は 次の構造を持つハッシュの配列。
  # [
  #   {
  #     name: 'サブタイトル',
  #     controller: 'パンくずリストからリンクされるコントローラ名',
  #     action: 'パンくずリストからリンクされるアクション名'
  #   },
  #   {
  #     name: 'サブタイトル',
  #     controller: 'パンくずリストからリンクされるコントローラ名',
  #     action: 'パンくずリストからリンクされるアクション名'
  #   },
  #      :
  #      :
  #   {
  #     name: 'サブタイトル',
  #   },
  # ]
  # パンくずリストの最後の項目にはリンクが貼られないため、:nameのみでおｋ。
  #
  def subtitle subtitle
    if subtitle.is_a? Array
      @subtitle = subtitle
    else
      @subtitle = [subtitle]
    end
  end
end
