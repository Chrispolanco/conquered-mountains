class ClimbersController < ApplicationController
    before_action :set_climber, only: [:show, :edit, :update]

    def index 
        @Climbers = Climber.all 
    end 

    def show 

    end

    def new 
        @climber = Climber.new
    end 

    def create
        @climber = Climber.create(climber_params)
            if @climber && @climber.save 
                redirect_to climber_path(@climber) 
            else 
                render :new
            end 
    end 

    def edit 
    
    end 

    def update 
        if @climber && @climber.update(climber_params)
            redirect_to climber_path(@climber)
        else
            render :edit 
        end 
    end

    private 

        def climber_params
            params.require(:climber).permit(:name, :age, :experience, :mountain_name, members_list: [])
        end 

        def set_climber
            @climber = Climber.find(params[:id])
        end 
    
    end 


end
