class Climber < ApplicationRecord
    has_many :climbs 
    has_many :mountains, through: :climbs
end
