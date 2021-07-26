class ApplicationController < ActionController::Base
  
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_locale
    # if params[:locale] is nil then I18n.default_locale will be used
    I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :phone])
  end

  def current_ability
  @current_ability ||= Ability.new(current_user)
  end
end
