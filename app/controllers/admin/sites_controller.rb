# -*- coding:UTF-8 -*-
class Admin::SitesController < AdminSharedController
  def edit
    @site = Site.find(1)
    subtitle :name =>  'サイト情報の編集'
  end

  def update
    begin
      Site.transaction do
        @site = Site.find(1)
        @site.update_attributes!(params[:site])
      end
      redirect_to(:edit_admin_site, :notice => t('site.update.complete'))
    rescue => e
      redirect_to :edit_admin_site, :alert => @site.errors
    end
  end

end
