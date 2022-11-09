class CategoriesController < ApplicationController
  def index
  @categories = Category.all
  render template: "Categories/index"
  end

  def show
  category = Category.find_by(id: params[:id])
  result = category.exercises
  render json: result.as_json
  end
end
