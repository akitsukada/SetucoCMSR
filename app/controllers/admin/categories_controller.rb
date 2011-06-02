# -*- coding:UTF-8 -*-
class Admin::CategoriesController < AdminSharedController
  def index
    subtitle :name =>  'カテゴリーの追加・編集・削除'
    @category = Category.new
    @categories = Category.order('name asc').page(params[:page]).per(10)
  end

  def create
    begin
      Category.transaction do
        @category = Category.new(params[:category])
        @category.save!
      end
      redirect_to(:admin_categories, :notice => "「#{@category.name}」を作成しました。")
    rescue => e
      redirect_to :admin_categories, :alert => @category.errors
    end
  end

  def update
  end

  def destroy
  end

end
