class ClimbsController < ApplicationController
    before_action :set_climb, only: [:show, :edit, :update]


    def index 
        @Climbs = Climb.all 
    end 

    def show 

    end

    def new 

    end 

    def create
        @climb = Climb.create(climb_params)
        if @climb && @climb.save
            redirect_to climb_path(@climb) 
        else 
            render :new 
        end 
    end 

    def edit 
    
    end 

    def update 
        if @climb && @climb.update(climber_params)
            redirect_to climb_path(@climb)
        else
            render :edit 
        end 
    end 

    private 

        def climb_params
            params.require(:climb).permit(:date_started, :date_completed, :name, :climber_id, :mountain_id)
        end 

        def set_climb
            @climb = Climb.find(params[:id])
        end 
    
end 

