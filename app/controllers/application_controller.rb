class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_city
    @current_city ||= City.find_by_id(params[:city_id])
  end

  helper_method :current_city

  private

  def admin_user
    if user_signed_in?
      redirect_to(root_path) unless current_user.admin?
    else
      redirect_to(root_path)
    end
  end


end
