class Astronaut < ApplicationRecord
    has_many :missions 
    has_many :human_space_flights, :through :missions
end
