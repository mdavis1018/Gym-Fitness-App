class WorkoutsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  def index
  @workouts = Workout.all
  render json: @workouts
  end

  def show
  @workout = Workout.find_by(id: params[:id])
  render json: @workout
  end
  
  def create
  @workout = Workout.new(
    title: params[:title],
    user_id: params[:user_id]
  )
  
 if @workout.save
  render json: {message: "workout create"}
 else 
  render json: { errors: @workout.errors.full_messages }, status: :bad_request
 end
  end

  def edit
    workout = Workout.find_by(id: params[:id])
    render json: workout.as_json
  end

  def update
    workout = Workout.find_by(id: params[:id])
    workout.title = params[:workout][:title]
    workout.user_id = params[:workout][:user_id] 
    if workout.save
    render json: {message: "workout updated"}
    else
    render json: { errors: workout.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
  workout = Workout.find_by(id: params[:id])
  if workout.destroy
    render json: {message: "workout delete"}
  else
    render json: { errors: workout.errors.full_messages }, status: :bad_request
  end
  end
end
