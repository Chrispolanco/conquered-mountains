class Climb < ApplicationRecord
    belongs_to :climber
    belongs_to :mountain

    validates :name, :duration, :date_started, :date_completed, presence: true
    
    scope :mountain_name, ->(name) { where("name(name) = ?", name) }
      

end
