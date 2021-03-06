class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:sex])
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:message])
    devise_parameter_sanitizer.permit(:account_update, keys: [:next_date])
  end
end
