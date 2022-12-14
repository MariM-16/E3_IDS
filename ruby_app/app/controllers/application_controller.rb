class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :user_type, :phone_number, :RUT, :location])
      devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:email, :phone_number, :RUT, :user_type, :first_name, :last_name, :location, :password, :password_confirmation, :current_password) }
    end
end
