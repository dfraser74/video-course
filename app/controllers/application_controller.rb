class ApplicationController < ActionController::Base
	# Redirect to chapters_path after sign_in
	def after_sign_in_path_for(resource_or_scope)
 		chapters_path
	end

	# Before filter for admin controller actions
	def is_admin?
  	if current_user.admin?
   		true
  	else
   		redirect_to chapters_path, notice: "You are not allowed to perform that action"
  	end
	end

  # Allow nickname when signing up
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
		 devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  protect_from_forgery with: :exception

end
