class Climber < ApplicationRecord
    has_many :climbs 
    has_many :mountains, through: :climbs

    validates :name, :age, :experience, presence: true 
    validates :name, uniqueness: true  
    validates :name validates :name, format: { without: /[0-9]/, message: "Only Letters" }

    def mountain_name=(name) 
        self.climb.mountain = Mountain.find_or_create_by(name: name) 
    end

    def mountain_name 
        self.climb.mountain ? self.climb.mountain.name : nil 
    end 

    def climber_members=(names)
        names.each do |name|
          climber_member = Climber.find_or_create_by(members: name)
          self.climber_members << climber_member
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
