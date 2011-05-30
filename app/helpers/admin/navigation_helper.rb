# -*- coding: utf-8 -*-
module Admin::NavigationHelper
  def current_navi? navi
    navi['controller'] == controller.controller_name &&
      navi['action'] == controller.action_name
  end
end
