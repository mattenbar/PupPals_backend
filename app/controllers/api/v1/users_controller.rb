class Api::V1::UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    user = User.new(user_params)
    byebug
    if user.save
      render json: user, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def index
    users = User.all
    render json: {user: UserSerializer.new(users)}
  end

  def profile
    render json: { user: UserSerializer.new(session[:user_id]) }, status: :accepted
  end

  def show
    user = User.find(params[:id])
    render json: user
  end
  
  
  
  private

  def user_params
    params.require(:user).permit( :owner, :email, :password, :pet_name, :about, :breed, :size, :sex, :age)
  end
end
