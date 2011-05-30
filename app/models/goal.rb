# -*- coding:UTF-8 -*-
class Goal < ActiveRecord::Base

  scope :goal_of_this_month,
    where(:target_month => Time.now.localtime.beginning_of_month.strftime('%Y-%m-%d')...(1.month.since.beginning_of_month.strftime('%Y-%m-%d')))

  def self.diff_count update_count
    diff = goal_of_this_month[0].page_count - update_count
    return 'equal'             if diff == 0
    return ['minus',diff]      if diff >  0
    return ['plus', diff.abs]  if diff <  0
  end

  def self.update_status
    # TODO: ロジックを組む
    'good'
  end
end
