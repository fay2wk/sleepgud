class SleepCycle < ApplicationRecord
  belongs_to :user

  validates :cycle_name, :user_id, presence: true
end
