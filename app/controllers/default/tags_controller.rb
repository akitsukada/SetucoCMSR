class Default::TagsController < DefaultParentController

  def show
    @tag = Tag.find params[:id]
    @query = @tag.name
    @search_result = @tag.pages.order('updated_at desc').page(params[:page]).per(10)
    @total_count = @tag.pages.count
    render 'shared/default/search'
  end

end
