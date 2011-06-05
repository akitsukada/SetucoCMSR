# -*- coding: utf-8 -*-
class Accounts::SessionsController < Devise::SessionsController
  layout 'login'
  def new
    super
  end
end
