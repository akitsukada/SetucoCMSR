# -*- coding: utf-8 -*-
class AdminSharedController < AdminParentController

  before_filter :enable_breadcrumbs

  private
  def enable_breadcrumbs
    @breadcrumbs = true
  end

end
