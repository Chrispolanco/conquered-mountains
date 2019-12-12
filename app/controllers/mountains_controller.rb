class MountainsController < ApplicationController
    def index 

    end 

    def show 

    end

    def new 

    end 

    def crete

    end 

    def edit 
    
    end 

    def update 

    end 

    def destroy 

    end 

    private 

        def climber_params
            params.require(:mountains).permit(:mountain_name, :route, :difficulty_rating)
        end 

end 
