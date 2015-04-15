class ApplicationController < ActionController::Base
  # protect_from_forgery :with => :exception
  # protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  protected
  # Catch all CanCan errors and alert the user of the exception
  # rescue_from CanCan::AccessDenied do | exception |
  #   redirect_to root_url, alert: exception.message
  # end
  
  def configure_permitted_parameters
    # devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :password, :password_confirmation, roles: [])}
  end
end
  # def current_ability
  #   @current_ability ||= Ability.new(current_user)
  # end
  # def current_ability
  #   @current_ability ||= AccountAbility.new(current_account)
  # end

