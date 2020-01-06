class Climb < ApplicationRecord
    belongs_to :climber
    belongs_to :mountain

    validates :name, :duration, :date_started, :date_completed, presence: true
    
    scope :mountain_name, -> (name) {where("name LIKE ?", name)}

    scope :recently_conquered, -> { order(:date_completed, :desc)} 

      

end
