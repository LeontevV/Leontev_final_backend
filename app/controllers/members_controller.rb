class MembersController < ApplicationController
  before_action :authenticate_user!

  def show
    render json: current_user.to_json(include: :posts)
  end

  def get_user
    render json: current_user
  end  
end