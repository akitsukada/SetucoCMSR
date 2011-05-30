# -*- coding: utf-8 -*-
class AdminSharedController < AdminParentController

  before_filter :set_breadcrumbs

  private
  def set_breadcrumbs
    @breadcrumbs = true
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
  #   {
  #     name: 'サブタイトル',
  #   },
  # ]
  # パンくずリストの最後の項目にはリンクが貼られないため、:nameのみでおｋ。
  #
  def set_subtitle subtitle
    if subtitle.is_a? Array
      @subtitle = subtitle
    else
      @subtitle = [subtitle]
    end
  end
end
