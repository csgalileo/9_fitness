class ApplicationController < ActionController::Base
  protect_from_forgery
		def after_sign_in_path_for(resource)
			if resource.usuario == nil
				
				new_usuario_path
			else
					resource.usuario
			end
		
		
		
		end
		
  end
