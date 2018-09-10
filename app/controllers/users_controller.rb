class UsersController < ApplicationController
  def index
    user = User.all
    render json: user
    # render plain: "I'm in the index action!"
  end
  
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end
  
  def show
    user = User.find(params[:id])
    render json: user
  end
  
  def destroy
    user = User.find(params[:id])
    User.delete(params[:id])
    p "#{user.name} has been terminated!"
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
  
  
end