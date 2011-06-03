# -*- coding:UTF-8 -*-
class Admin::SitesController < AdminSharedController
  def edit
    @site = Site.find(1)
    subtitle :name =>  'サイト情報の編集'
  end

  def update
  end

end
