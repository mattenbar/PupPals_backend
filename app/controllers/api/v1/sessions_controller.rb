class Api::V1::SessionsController < ApplicationController
  
  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      render json: user
    else
      render json: { error: 'failed to login user' }, status: :not_acceptable
    end
  end

  def destroy
    session.clear
  end

end
