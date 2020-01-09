class Climber < ApplicationRecord
    has_many :climbs 
    has_many :mountains, through: :climbs

    validates :name, :age, :experience, presence: true 
    validates :name, uniqueness: true  
    validates :name, format: { without: /[0-9]/, message: "Only Letters" }

    accepts_nested_attributes_for :mountains
    accepts_nested_attributes_for :climbs


    def number_mountains 
        list = []
        self.climbs.each do |climb|
            mountain = climb.mountain.name
            list << mountain 
        end 
        list.uniq.count
    end 

    def self.age_order 
        order(:age)
    end
    
    def self.experience_order
        order(:experience) 
    end 

    def mountains_attributes=(mountain_attributes) 
        mountain_attributes.values.each do |mountain_attribute|
            mountain = Mountain.find_or_create_by(mountain_attribute)
                self.mountains << mountain
        end 
    end 

    def members=(name)
        self.climb_members = Climber.find_or_create_by(name: name)
    end 

    def members
        self.climb_members 
    end 
end
