class UsersController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
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

  def edit
    user = User.find_by(id: params[:id])
    render json: user.as_json
  end

  def update
    user = User.find_by(id: params[:id])
    user.name = params[:user][:name] || user.name
    user.weight = params[:user][:weight] || user.weight
    user.email = params[:user][:email] || user.email
    user.image_url = params[:user][:image_url] || user.image_url
    if user.save
    render json: {message: "user updated"}
    else
    render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
  @user = User.find_by(id: params[:id])
   @user.destroy
    render json: {message: "user deleted"}
  end
end
