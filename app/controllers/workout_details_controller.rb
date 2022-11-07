class WorkoutDetailsController < ApplicationController
  before_action :authenticate_user
  def create
  details = WorkoutDetail.new(
    workout_id: params[:workout_id],
    exercise_id: params[:exercise_id],
    reps: params[:reps],
    weight: params[:weight],
    sets: params[:sets]
  )

  if details.save
    render json: details.as_json
  else 
    render json: { errors: details.errors.full_messages }, status: :bad_request
 end
  end
end
