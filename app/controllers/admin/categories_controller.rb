# -*- coding:UTF-8 -*-
class Admin::CategoriesController < AdminSharedController
  def index
    subtitle :name =>  'カテゴリーの追加・編集・削除'
    @new_category = Category.new
    @categories = Category.order('name asc').page(params[:page]).per(10)
  end

  def create
  end

  def update
  end

  def destroy
  end

end
