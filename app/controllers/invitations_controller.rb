class InvitationsController < Devise::InvitationsController
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :authorize_inviter!, only: [:new, :create]

protected

#  def authenticate_inviter!
#    # user.has_role? :admin
#    # authenticate_admin!(:force => true)
#  end
  def authorize_inviter!
    authorize! :invite, User
  end

  def configure_permitted_parameters
    # Only add some parameters
    devise_parameter_sanitizer.for(:invite).concat [:name]
    devise_parameter_sanitizer.for(:accept_invitation).concat [:name]
#    # Override accepted parameters
#    devise_parameter_sanitizer.for(:accept_invitation) do |u|
#      u.permit(:first_name, :last_name, :phone, :password, :password_confirmation,
#               :invitation_token)
#    end
  end
end
