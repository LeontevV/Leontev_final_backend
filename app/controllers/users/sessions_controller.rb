class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})

    if current_user then
      render json: { message: current_user }, status: :ok
    else render json: { message: 'Не вошёл в систему' }, status: :unauthorized
    end
  end

  def respond_to_on_destroy
    log_out_success && return if current_user

    log_out_failure
  end

  def log_out_success
    render json: { message: "Вы вышли из системы" }, status: :ok
  end

  def log_out_failure
    render json: { message: "Попробуйте ещё раз"}, status: :unauthorized
  end
end