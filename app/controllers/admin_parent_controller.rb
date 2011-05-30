# -*- coding:UTF-8 -*-
class AdminParentController < ApplicationController
  layout 'admin'
  before_filter :loaddata_for_layout

  private
  def loaddata_for_layout

    # data from config
    @copyright_years = SetucoCMSR::Application.config.years
    @authors = SetucoCMSR::Application.config.authors
    @navi = YAML.load_file(File.join(Rails.root, 'config', 'navigation.yaml'))



    # data from db
    @site = Site.find(1)

    # login user
    @login_user = 'admin' # TODO: 実装する

    # sidebar navigation


  end
end
