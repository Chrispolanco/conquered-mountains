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
        if @climb.save
            redirect_to climb_path(@climb) 
        else 
            render :new 
        end 
    end 

    def edit 
    
    end 

    def update 

    end 

    private 

        def climb_params
            params.require(:climb).permit(:duration, :date_started, :date_completed, :climber_id, :mountain_id)
        end 

        def set_climb
            @climb = Climb.find(params[:id])
        end 
    
end 

