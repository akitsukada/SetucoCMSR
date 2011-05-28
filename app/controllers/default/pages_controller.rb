class Default::PagesController < DefaultParentController
  def show
    @page = Page.find params[:id]
  end

end
