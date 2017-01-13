class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before-action -> before executing any controller perform this action
  before_action :configure_permitted_parameters, if: :devise_controller? 

  protected

  #Allowing the parameter to be accepted bu the devise (similar to params require under every controller)
  def configure_permitted_parameters
  	devise_paramete_sanitizer.permit(:sign_up, keys: [user_type])
  end
end
