# -*- coding:UTF-8 -*-
class Admin::IndexController < AdminParentController
  def index
    subtitle :name => 'トップ'
    @ambition = Ambition.all[0]
    @goal = Goal.goal_of_this_month
    @update_status = Goal.update_status
    @update_count = Page.updates_of_this_month.count
    @diff_status,@diff_count = Goal.diff_count @update_count
    @total_count = Page.where(:published => true).count
    @last_update = Page.newer10[0].created_at
    @past_days_from_update = (Time.now.to_date - @last_update.to_date).to_i - 1
    @open_date = Site.all[0].open_date.to_date
    @past_days_from_open = (Time.now.to_date - @open_date).to_i - 1
    @recent_pages = Page.order('created_date desc')[0..4]
  end

end
