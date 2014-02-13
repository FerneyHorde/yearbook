class RegistrationsController < Devise::RegistrationsController
  before_filter :disallow, only: [:new, :create]
  before_filter :update_sanitized_params, if: :devise_controller?

protected
  def disallow 
    flash[:danger] = "Registrations are not permitted"
    redirect_to root_path
  end

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name, :email, :password, :password_confirmation, :current_password)}
  end

end
