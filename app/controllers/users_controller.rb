class UsersController < ApplicationController

    before_action :set_user, only: [:show, :edit, :update, :destory]

    def index 
        @User = User.all 
    end 

    def show 

    end

    def new 
        @user = User.new
    end 

    def create
        @user = User.create(user_params)
        if @user.save 
            redirect_to user_path(@user) 
        else 
            render :new
    end 

    def edit 
    
    end 

    def update 
        if @user && @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit 
        end 
    end 

    def destory
        redirect_to users_path 
    end 

    private 

        def user_params
            params.require(:user).permit(:username, :password_digest, :email, :name)
        end 

        def set_user
            @user = User.find(params[:id])
        end 
    
    end 


end

end
