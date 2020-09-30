class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :meetings, foreign_key: "attended_event_id"
    has_many :attendees, through: :meetings

    
  scope :past, -> { where("date <= ?", Date.tomorrow) }
  scope :upcoming, -> { where("date > ?", Date.tomorrow) }
end
