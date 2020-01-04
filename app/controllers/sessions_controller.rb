class SessionsController < ApplicationController

    def create 
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            fash[:error] = "Login not successful"
            redirect_to login_path 
        end 
    end 

end
