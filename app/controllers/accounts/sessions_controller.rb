# -*- coding: utf-8 -*-
class Accounts::SessionsController < Devise::SessionsController
  layout 'login'

  def after_sign_out_path_for resource
    new_account_session_path
  end

end
