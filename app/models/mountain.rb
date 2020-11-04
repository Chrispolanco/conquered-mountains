class Mountain < ApplicationRecord
    has_many :climbs
    has_many :climbers, through: :climbs

    validates :name, uniqueness: true  
    validate :is_name_correct

    before_validation :properly_format

    def explorations 
        self.climbs.count
    end 
    

    private 
    
        def is_name_correct
            if name.split.any?{|w|w[0].upcase != w[0]}
            errors.add(:title, "First Letter of Every Word Must be Capitalized")
            end
        end

        def properly_format
            self.name = self.name.split(/ |\_/).map(&:capitalize).join(" ")
        end 
          
end
