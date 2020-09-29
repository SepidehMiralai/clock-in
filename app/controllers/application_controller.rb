class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_user

  private

  def set_current_user
    Current.user = current_user
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  # def after_sign_in_path_for(resource)
  #   # return the path based on resource
  #   if current_user.admin? 
  #     root_url
  #   else
  #     teacher_path
  #   end
  # end
end
