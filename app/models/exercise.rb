class Exercise < ApplicationRecord
  has_many :workout_details
  has_many :workouts, through: :workout_details
  belongs_to :category
end
