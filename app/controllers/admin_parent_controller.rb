# -*- coding:UTF-8 -*-
class AdminParentController < ApplicationController
  layout 'admin'
  before_filter :authenticate_account!, :init

  private
  def init

    begin

      @add_js = []
      @add_css = []

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

    rescue => e
      #初期化失敗
    end

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

  def add_js js
    @add_js << js
  end

  def add_css css
    @add_css << css
  end
end
