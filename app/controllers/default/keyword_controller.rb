class Default::KeywordController < DefaultParentController

  def search
    @query = params[:query]
    @search_result = Page.default_keyword_search(@query)
  end

end
