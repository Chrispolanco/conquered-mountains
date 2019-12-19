class MountainsController < ApplicationController
    before_action :set_mountain, only: [:show, :edit, :update]

    def index 
        @mountains = Mountain.all
    end 

    def show 

    end

    def new 

    end 

    def create
        @mountain = Mountain.create(mountain_params)
        redirect_to mountain_path (@mountain)
    end 

    def edit 
    
    end 

    def update 

    end 

    private 

        def human_space_flight_params
            params.require(:human_space_flight).permit(:launch_sites, :duration, :maiden_flight, :last_flight, :description, :mission_id, :astronaut_id)
        end 

        def set_flight
            @human_space_flight = Human_Space_Flight.find(params[:id])
        end 

end 
