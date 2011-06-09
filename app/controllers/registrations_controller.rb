class RegistrationsController < Devise::RegistrationsController
protected
	def after_sign_up_path_for(resource)
    'http://www.google.com.gt/'
  end
  def after_inactive_sign_up_path_for(resource)
    'http://www.google.com.gt/'
  end
end
