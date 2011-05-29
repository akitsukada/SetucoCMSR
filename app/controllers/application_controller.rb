class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :detect_locale

  def set_subtitle subtitle
    @subtitle = subtitle
  end

  private
  def detect_locale
    I18n.locale = request.headers['Accept-Language'].scan(/^[a-z]{2}/).first
  end
end
