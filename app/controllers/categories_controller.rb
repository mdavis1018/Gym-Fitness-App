class CategoriesController < ApplicationController
  def index
  category = Category.all
  render json: category.as_json
  end
end
