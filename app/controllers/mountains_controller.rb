class MountainsController < ApplicationController
    before_action :set_mountain, only: [:show, :edit, :update, :destroy]

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

    def destroy 

    end 

    private 

        def mountain_params
            params.require(:mountains).permit(:mountain_name, :route, :difficulty_rating)
        end 

        def set_mountain
            @mountain = Mountain.find(params[:id])
        end 

end 
