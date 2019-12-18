class AstronautsController < ApplicationController
    before_action :set_astronaut, only: [:show, :edit, :update, :destroy]

    def index 
        @Astronauts = Astronaut.all 
    end 

    def show 

    end

    def new 

    end 

    def create
        @astronaut = Astronaut.create(astronaut_params)
        redirect_to astronaut_path(@astronaut) 
    end 

    def edit 
    
    end 

    def update 

    end
    
    def destroy

    end 

    private 

        def astronaut_params
            params.require(:astronaut).permit(:name, :age, :active)
        end 

        def set_astronaut
            @astronaut = Astronaut.find(params[:id])
        end 
    
    end 


end
