class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :resource
  helper_method :resource_name
  helper_method :devise_mapping


  def resource
    User.new
  end

  def resource_name
    :user
  end

  def devise_mapping
     @devise_mapping  ||= Devise.mappings[:user]
  end

end
