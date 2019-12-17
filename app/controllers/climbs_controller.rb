class ClimbsController < ApplicationController
    def index 
        @climbs = Climbs.all 
    end 

    def show 

    end

    def new 

    end 

    def create
        @climb = Climb.create(climb_params)
        redirect_to climb_path(@climb) 
    end 

    def edit 
    
    end 

    def update 

    end 

    def destroy 

    end 

    private 

        def climb_params
            params.require(:climbs).permit(:completed, :date_time_started, :date_time_finished, :duration, :climber_id, :mountain_id)
        end 
    
end 

