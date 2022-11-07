class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_details
  has_many :exercises, through: :workout_details
end
