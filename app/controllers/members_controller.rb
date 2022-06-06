class MembersController < ApplicationController
  before_action :authenticate_user!

  def show
    
    render json: { message: "Если видите это,Вы внутри!" }
  end
end