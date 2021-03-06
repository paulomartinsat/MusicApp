class RegistrationsController < ApplicationController
    #instatiates new user
    #skip_before_action :authorized, only: [:new, :create, ]
    def new
        @user=User.new
    end
    def create
        @user=User.new(user_params)
        if @user.save
            #stores userid in a session
            session[:user_id]=@user.id 
            redirect_to root_path, notice: "Sucessfully created an account!"
        else
            render :new
        end
    end
    private
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
