class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
  @user = User.find_by(id: params[:id])
  render json: @user
  end

  def create
  @user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password],
    image_url: params[:image_url],
    weight: params[:weight],
  )
  if @user.save
  render json: {message: "user created"}
  else 
    render json: { errors: @user.errors.full_messages }, status: :bad_request
  end
  end

  def destroy
  @user = User.find_by(id: params[:id])
   @user.destroy
    render json: {message: "user deleted"}
  end
end
