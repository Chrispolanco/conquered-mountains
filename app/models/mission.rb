class Mission< ApplicationRecord
    has_many :human_space_flights
    has_many :astronauts, :through :missions
end
