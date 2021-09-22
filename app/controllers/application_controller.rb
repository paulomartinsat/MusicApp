class ApplicationController < ActionController::Base
    before_action :set_current_user
    def set_current_user
        #finds user and stores session data if present
        Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
    end
    def require_user_logged_in!
        #allows logged in user
        redirect_to sign_in_path, alert: 'You must be signed in to continue' if Current
    end
    def has_role?(role)
        Current.user && Current.user.has_role?(role)
    end
end

