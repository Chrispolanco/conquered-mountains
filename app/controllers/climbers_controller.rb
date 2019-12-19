class ClimbersController < ApplicationController
    before_action :set_climber, only: [:show, :edit, :update, :destroy]

    def index 
        @Climbers = Climber.all 
    end 

    def show 

    end

    def new 

    end 

    def create
        @climber = Climber.create(climber_params)
        redirect_to climber_path(@climber) 
    end 

    def edit 
    
    end 

    def update 

    end
    
    def destroy

    end 

    private 

        def climber_params
            params.require(:climber).permit(:name, :age, :experience)
        end 

        def set_climber
            @climber = Climber.find(params[:id])
        end 
    
    end 


end
