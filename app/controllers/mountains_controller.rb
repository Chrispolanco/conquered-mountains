class MountainsController < ApplicationController
    before_action :set_mountain, only: [:show, :edit, :update]
    before_action :not_logged_in 
    

    def index 
        if params[:climber_id]
            @mountains = Mountain.find(params[:climber_id])
        else
            @mountains = Mountain.all
        end 
    end 

    def show 

    end

    def new 
        @mountain = Mountain.new
    end 

    def create
        @mountain = Mountain.create(mountain_params)
            if @mountain && @mountain.save
                redirect_to mountain_path (@mountain)
            else 
                render :new
            end 
    end 

    def edit 
    
    end 

    def update 
        if @mountain && @mountain.update(mountain_params)
            redirect_to mountain_path(@mountain)
        else
            render :edit 
        end 
    end 

    private 

        def mountain_params
            params.require(:mountain).permit(:name, climber_ids:[])
        end 

        def set_mountain
            @mountain = Mountain.find(params[:id])
        end 

end 
