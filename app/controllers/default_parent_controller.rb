class DefaultParentController < ApplicationController
  layout 'default/default'
  before_filter :loaddata_for_layout


  private
  def loaddata_for_layout
      # author infomation from config(application.rb)
      @author = SetucoCMSR::Application.config.author

      # version infomation from config(application.rb)
      @version = SetucoCMSR::Application.config.version

      # site data from db
      @site = Site.find(1)
      @start_year = @site.open_date.strftime('%Y')

      # category data from db
      @categories = Category.all

  end
end
