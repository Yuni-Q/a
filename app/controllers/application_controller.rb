class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  	def authority_forbidden(error)
	  Authority.logger.warn(error.message)
	  redirect_to request.referrer.presence || root_path, :alert => 'You are not authorized to complete that action.'
	end
	def configure_permitted_parameters
	 	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :address, :marketing_email, :marketing_phone, :agreement, :information, :marketing]) 
		devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :address, :marketing_email, :marketing_phone, :agreement, :information, :marketing]) 
	end

end
