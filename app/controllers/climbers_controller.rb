class ClimbersController < ApplicationController
    before_action :set_climber, only: [:show, :edit, :update]

    def index 
        @climbers = Climber.all 
    end 

    def show 

    end

    def new 

    end 

    def create
        Climber.create(climber_params)
        redirect_to climbers_path 
    end 

    def edit 
    
    end 

    def update 

    end 

    private 

        def climber_params
            params.require(:climber).permit(:username, :password_digest, :email, :name)
        end 

        def set_climber
            @climber = Climber.find(params[:id])
        end 
    
    end 


end
