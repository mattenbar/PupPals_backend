class ApplicationController < ActionController::API
  include api::v1::Concerns::ApplicationConcern
  
  # private
  #   def current_user
  #     @current_user ||= User.find_by_id(session[:user_id])
  #   end

 

  #   def authorized
  #     render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  #   end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end