# frozen_string_literal: true

class Employees::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  include RackSessionFix
  respond_to :json

  private

  def respond_with(current_employee, _opts = {})
    render json: {
      status: {
        code: 200, message: 'Logged in successfully.',
        data: { user: EmployeeSerializer.new(current_employee).serializable_hash[:data][:attributes] }
      }
    }, status: :ok
  end
  def respond_to_on_destroy
    if request.headers['Authorization'].present?
      jwt_payload =
        JWT.decode(request.headers['Authorization'].split(' ').last,
                   Rails.application.credentials.devise_jwt_secret_key!).first
      current_employee = Employee.find(jwt_payload['sub'])
      end

    if current_employee
      render json: {
        status: {code: 200, message: 'Logged out successfully.'},
      }, status: :ok
    else
      render json: {
        status: {message: 'Logged out failed.'},
      }, status: :unauthorized
    end
  end
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
