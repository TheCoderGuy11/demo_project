class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  load_and_authorize_resource
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :name, :mobile, :address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:mobile, :address, :email, :password, :current_password, :image])
  end
end
