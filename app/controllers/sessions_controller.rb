class SessionsController < ApplicationController
    def new
    end
    def create
        user=User.find_by(username: params[:username])
        #check to see if an existent user can be authenticated
        if user.present? && user.authenticate(params[:password])
            #sets userid sessions
            session[:user_id]=user.id
            redirect_to root_path, notice 'Logged in'
        else
            flash.now[:alert]="Sorry, we couldn't find an account with this username. Please check you're using the right username and try again."
            render :new
        end
    end
    def destroy
        #destroy current user session
        session[:user_id]=nil
        redirect_to root_path, notice: 'Logged Out'
    end
end