class ApplicationController < ActionController::Base
    protect_from_forgery
    helper_method :current_user, :logged_in?, :not_logged_in

    private 

        def current_user
            @current_user ||= User.find_by(id: session[:id]) if session[:user_id]
        end

        def logged_in? 
            !!current_user
        end 

        def not_logged_in 
            redirect_to login_path if !logged_in? 
        end 

end
