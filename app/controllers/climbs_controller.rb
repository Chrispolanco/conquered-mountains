class ClimbsController < ApplicationController
    before_action :set_climb, only: [:show, :edit, :update]
    before_action :not_logged_in 
    


    def index
        if params[:climber_id]
            @unique_climber = Climber.find(params[:climber_id])
            @climbs = @unique_climber.climbs 
        else
            @recently_completed = Climb.recently_conquered
        end 
    end 

    def new 
        if params[:climber_id]
            @climb = Climb.find(params[:climber_id])
        else
            @climb = Climb.new
        end 
    end 

    def create
        @climb = Climb.create(climb_params)
        if @climb && @climb.save
            redirect_to climb_path(@climb) 
        else 
            render :new 
        end 
    end 

    def update 
        if @climb && @climb.update(climb_params)
            redirect_to climb_path(@climb)
        else
            render :edit 
        end 
    end 

    private 

        def climb_params
            params.require(:climb).permit(:date_started, :date_completed, :climber_id, :mountain_id)
        end 

        def set_climb
            @climb = Climb.find(params[:id])
        end 
    
end 

