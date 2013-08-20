class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_city
  	@current_city ||= City.last
  end

  def layout_vars
  	@background_path = asset_path 'backgrounds/'
  end

end
