class Api::V1::UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    user = User.new(user_params)
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

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: { user: UserSerializer.new([user]) }
  end

  def img_upload
    user = User.find(params[:user_id])
    file_url = Cloudinary::Uploader.upload(params[:file], options = {})
    user.img = file_url["url"]
    user.save
    render json: user
  end

  def likedMe
    user = User.find(params[:user][:id])
    users = user.follower_users
    render json: {user: UserSerializer.new(users)}
  end

  def likeUser
    user = User.find(params["user"]["currentUserId"])
    liked_user = User.find_by(email: (params["user"]["likedUser"]))
    liked_user.follower_users << user
  end
  
  
  
  private

  def user_params
    params.require(:user).permit(:id, :owner, :email, :password, :pet_name, :about, :breed, :size, :sex, :age, :img)
  end
end
