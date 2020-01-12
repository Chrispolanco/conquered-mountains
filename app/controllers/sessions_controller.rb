class SessionsController < ApplicationController

    def welcome
        if logged_in? 
            render 'climbs/index' 
        else 
            redirect_to login_path
        end
    end 

    def new 
        @user = User.new
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

    def omniauth
        @user = User.from_omniauth(auth)
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

end
