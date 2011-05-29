# -*- coding:UTF-8 -*-
class Default::CategoriesController < DefaultParentController
  def show
    @category = Category.find params[:id]
    @pages = @category.pages.order('updated_at desc').page(params[:page]).per(10)
    @total_count = @category.pages.count
    set_subtitle "「#{@category.name}」カテゴリーのページ"
  end

end
