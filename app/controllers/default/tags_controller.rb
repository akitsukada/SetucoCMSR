class Default::TagsController < DefaultParentController

  def show
    @tag = Tag.find params[:id]
    @query = @tag.name
    @search_result = @tag.pages
    render 'shared/default/search'
  end

end
