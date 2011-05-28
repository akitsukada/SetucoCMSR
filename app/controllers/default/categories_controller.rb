class Default::CategoriesController < DefaultParentController
  def show
    @category = Category.find params[:id]
    @pages = @category.pages.order('updated_at desc').page(params[:page]).per(10)
  end

end
