class ExercisesController < ApplicationController
  def index
  @exercises = Exercise.all
  if params["category"]
  category = Category.find_by(title: params["category"])
  @exercises = category.exercises
  end
  render json: @exercises
  end
  
  def show
  @exercise = Exercise.find_by(id: params[:id])
  render json: @exercise 
  end

end
