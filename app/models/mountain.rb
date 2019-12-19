class Mountain < ApplicationRecord
    has_many :climbs
    has_many :climbers, through: :climbs
end
