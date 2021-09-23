class ApplicationController < ActionController::Base
    
    protect_from_forgery with: :exception
    helper_method :current_user

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def require_user_logged_in!
			redirect_to sign_in_path, alert: 'You must be signed in to continue' unless current_user.present?    
    end

    def authorized
        redirect_to root_path unless logged_in?
    end

    def logged_in?
        !set_current_user.nil?
    end
    
end

