class MissionsController < ApplicationController
    before_action :set_mission, only: [:show, :edit, :update]


    def index 
        @missions = Mission.all 
    end 

    def show 

    end

    def new 

    end 

    def create
        @mission = Mission.create(mission_params)
        redirect_to mission_path(@mission) 
    end 

    def edit 
    
    end 

    def update 

    end 

    private 

        def mission_params
            params.require(:mission).permit(:program_name, :active, :manned_space_exploration)
        end 

        def set_mission
            @mission = Mission.find(params[:id])
        end 
    
end 

