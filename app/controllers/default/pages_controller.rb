class Default::PagesController < DefaultParentController
  def show
    @page = Page.find params[:id]
    set_subtitle @page.title
  end

end
