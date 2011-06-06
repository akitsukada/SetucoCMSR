# -*- coding:UTF-8 -*-
require 'date'
class Admin::GoalsController < AdminSharedController
  def edit
    subtitle :name => '更新目標の編集'
    @goal = Goal.goal_of_this_month
  end

  def update
    begin
      Goal.transaction do
        @goal = Goal.find(params[:id])
        @goal.update_attributes!(params[:goal])
      end
      redirect_to(:edit_admin_goal, :notice => t('goal.update.complete'))
    rescue => e
      redirect_to :edit_admin_goal, :alert => @goal.errors
    end
  end

end
