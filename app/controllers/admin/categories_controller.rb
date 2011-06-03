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
    begin
      Category.transaction do
        @category = Category.find(params[:id])
        @category.update_attributes!(params[:category])
      end
      redirect_to(:admin_categories, :notice => "「#{@category.previous_changes[:name][0]}」を「#{@category.name}」を更新しました。")
    rescue => e
      redirect_to :admin_categories, :alert => @category.errors
    end
  end

  def destroy
    begin
      Category.transaction do
        @category = Category.find(params[:id])
        @category.destroy
      end
      redirect_to(:admin_categories, :notice => "「#{@category.name}」を削除しました。")
    rescue => e
      redirect_to :admin_categories, :alert => @category.errors
    end
  end

end
