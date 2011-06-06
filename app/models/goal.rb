# -*- coding:UTF-8 -*-
require 'date'
class Goal < ActiveRecord::Base

  validates :page_count, :presence => true

  scope :get_this_months_goal, where(:target_month => Date.today.beginning_of_month)
  def self.goal_of_this_month
    get_this_months_goal.first
  end

  def self.diff_count update_count
    diff = goal_of_this_month.page_count - update_count
    return 'equal'             if diff == 0
    return ['minus',diff]      if diff >  0
    return ['plus', diff.abs]  if diff <  0
  end

  def self.update_status
    # TODO: ロジックを組む
    'good'
  end
end
