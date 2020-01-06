class SessionsController < ApplicationController

    def welcome
        if logged_in? 
            render 'climbs/index' 
        else 
            redirect_to login_path
        end
    end 

    def new 
    end 

    def create 
        @user = User.find_by(username: params[:session][:username])
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            flash[:error] = "Login not successful"
            redirect_to login_path 
            
        end 
    end 

    def destroy 
        session.clear
        redirect_to login_path
    end 



end
