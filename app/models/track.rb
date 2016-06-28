class Track < ApplicationRecord
  belongs_to :sleep_cycle

  validates :date, :hours, :mood,  presence: true
end
