class WorkoutDetail < ApplicationRecord
  belongs_to :exercise
  belongs_to :workout
  validates :workout_id, presence: true
  validates :exercise_id, presence: true
end
