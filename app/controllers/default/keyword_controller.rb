# -*- coding:UTF-8 -*-
class Default::KeywordController < DefaultParentController

  def search
    @query = params[:query]
    @search_result = Page.default_keyword_search(@query)
    @total_count = @search_result.count
    @search_result = @search_result.page(params[:page]).per(10)
    set_subtitle "「#{@query}」の検索結果"
    render 'shared/default/search'
  end

end
