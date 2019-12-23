class Climber < ApplicationRecord
    has_many :climbs 
    has_many :mountains, through: :climbs

    validates :name, :age, :experience, presence: true 
    validates :name, uniqueness: true  
    validates :name validates :name, format: { without: /[0-9]/, message: "Only Letters" }
end
