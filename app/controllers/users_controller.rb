class UsersController < ApplicationController
  
  private

  def show
    render json: @user.to_json(include: :posts)
  end
  
  def set_user
    @user = User.find(params[:id])
  end
 
end
