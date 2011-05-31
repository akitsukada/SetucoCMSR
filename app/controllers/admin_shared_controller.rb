# -*- coding: utf-8 -*-
class AdminSharedController < AdminParentController

  before_filter :set_breadcrumbs

  private
  def set_breadcrumbs
    @breadcrumbs = true
  end

end
