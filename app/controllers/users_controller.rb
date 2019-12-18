class UsersController < ApplicationController

    before_action :set_user, only: [:show, :edit, :update, :destory]

    def index 
        @User = User.all 
    end 

    def show 

    end

    def new 

    end 

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user) 
    end 

    def edit 
    
    end 

    def update 

    end 

    def destory

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
