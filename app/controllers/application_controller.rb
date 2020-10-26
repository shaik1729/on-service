class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    if params["mechanic"]
      devise_parameter_sanitizer.permit(:sign_up, keys: 
      [:name, :mobile_number, :gender, :specialization, :latitude, :longitude])
      devise_parameter_sanitizer.permit(:account_update, keys: 
      [:name, :mobile_number, :gender, :specialization, :latitude, :longitude])
    else
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
  end

  def after_sign_in_path_for(resource)
    '/selection_page'
  end
end
