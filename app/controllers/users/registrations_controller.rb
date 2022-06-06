class Users::RegistrationsController < Devise::RegistrationsController
  include RackSessionFix

  respond_to :json

  private 

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: { message: 'Регистрация завершена успешно' }
  end

  def register_failed
    render json: { message: "Что-то пошло не так" }
  end
end



