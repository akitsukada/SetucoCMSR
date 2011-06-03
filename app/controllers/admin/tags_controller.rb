# -*- coding:UTF-8 -*-
class Admin::TagsController < AdminSharedController
  def index
    subtitle :name =>  'タグの追加・編集・削除'
    @tag = Tag.new
    @tags = Tag.order('name asc').page(params[:page]).per(10)
  end

  def create
    begin
      Tag.transaction do
        @tag = Tag.new(params[:tag])
        @tag.save!
      end
      redirect_to(:admin_tags, :notice => "「#{@tag.name}」を作成しました。")
    rescue => e
      redirect_to :admin_tags, :alert => @tag.errors
    end
  end

  def update
    begin
      Tag.transaction do
        @tag = Tag.find(params[:id])
        @tag.update_attributes!(params[:tag])
      end
      redirect_to(:admin_tags, :notice => "「#{@tag.previous_changes[:name][0]}」を「#{@tag.name}」を更新しました。", :params => {:hoge => 'aaa'})
    rescue => e
      redirect_to :admin_tags, :alert => @tag.errors
    end
  end

  def destroy
    begin
      Tag.transaction do
        @tag = Tag.find(params[:id])
        @tag.destroy
      end
      redirect_to(:admin_tags, :notice => "「#{@tag.name}」を削除しました。")
    rescue => e
      redirect_to :admin_tags, :alert => @tag.errors
    end
  end

end
