# -*- coding:UTF-8 -*-
class Default::CategoriesController < DefaultParentController
  def show
    if params[:id] == '0' # カテゴリ未分類
      @total_pages = Page.where(:category_id => nil)
      @total_count = @total_pages.count
      @pages = @total_pages.order('updated_at desc').page(params[:page]).per(10)
      @category_name = t 'category.uncategorized'
    else
      @category = Category.find(:id => params[:id])
      @pages = @category.pages.order('updated_at desc').page(params[:page]).per(10)
      @total_count = @category.pages.count
      @category_name = @category.name
    end
    end
    set_subtitle "「#{@category_name}」カテゴリーのページ"
  end

end
