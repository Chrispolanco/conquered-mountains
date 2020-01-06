class Climb < ApplicationRecord
    belongs_to :climber
    belongs_to :mountain
    
    scope :mountain_name, -> (name) {where("name LIKE ?", name)}

    scope :recently_conquered, -> { order(:date_completed, :desc)} 

      

end
