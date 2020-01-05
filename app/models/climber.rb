class Climber < ApplicationRecord
    has_many :climbs 
    has_many :mountains, through: :climbs

    validates :name, :age, :experience, :climb_members, presence: true 
    validates :name, uniqueness: true  
    validates :name, format: { without: /[0-9]/, message: "Only Letters" }

    accepts_nested_attributes_for :mountains

    def self.age_order 
        order(:age)
    end
    
    def self.experience_order
        order(:experience) 
    end 

    def mountains_attributes=(mountain_attributes)
        mountain_attributes.values.each do |mountain_attribute|
            if mountain_attribute["name"].present? 
                mountain = Mountain.find_or_create_by(mountain_attribute)
                self.mountains << mountain
            end 
        end 
    end

    def climber_members=(names)
        names.each do |name|
            if name.present?
                climber_member = Climber.find_or_create_by(members: name)
                self.climber_members << climber_member
            end 
        end 
    end 

    def climber_members
        members_list = []
        self.names.map do |name|
            if name.members !=""
                members_list << name.members
            end 
        end 
        members_list.uniq
    end 

end
