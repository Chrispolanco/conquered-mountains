class HumanSpaceFlightsController < ApplicationController
    before_action :set_flight, only: [:show, :edit, :update, :destroy]

    def index 
        @human_space_flight = Human_Space_Flight.all
    end 

    def show 

    end

    def new 

    end 

    def create
        @human_space_flight = Human_Space_Flights.create(human_space_flight_params)
        redirect_to human_space_fligh_path (@human_space_flight)
    end 

    def edit 
    
    end 

    def update 

    end 

    def destroy 

    end 

    private 

        def human_space_flight_params
            params.require(:human_space_flight).permit(:launch_sites, :duration, :maiden_flight, :last_flight, :description, :mission_id, :astronaut_id)
        end 

        def set_flight
            @human_space_flight = Human_Space_Flight.find(params[:id])
        end 

end 
