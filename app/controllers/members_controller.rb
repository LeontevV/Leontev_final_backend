class MembersController < ApplicationController
  before_action :authenticate_user!

  def show
    render json: { message: "Если видите это,Вы внутри!" }
  end

  def get_user
    render json: current_user
  end  
end