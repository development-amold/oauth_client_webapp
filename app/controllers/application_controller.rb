class ApplicationController < ActionController::Base

  def logout
    sign_out current_user
    # return redirect_to "http://localhost:3001/users/sign_out"  #----providers urls for logout providers session
  	redirect_to root_path
  end

  protected
    def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    end
  	
end
