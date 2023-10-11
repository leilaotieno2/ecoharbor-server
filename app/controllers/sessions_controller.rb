require 'jwt'

class SessionsController < ApplicationController
    def create
    # Assuming you have a user object with user_id
    employee_id = current_user.id
    
    # Create a payload with user_id and any other necessary data
    payload = { employee_id: employee_id }

    # Set the secret key (you should store this securely in your environment)
    secret_key = Rails.application.credentials.jwt_secret_key

    # Generate a JWT token
    token = JWT.encode(payload, secret_key, 'HS256')

    # Return the token to the client
    render json: { token: token }


end

  # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  # def new
  # end

  # def create
  #    @employee = Employee.find_by(email: params[:email])
    
  #     if @employee
  #       if @employee.authenticate(params[:password])
  #         session[:employee_id] = @employee.id
  #         session[:full_name] = @employee.full_name
  #         render json: @employee, status: :found
  #       else
  #         render json: { errors: ["Invalid password, please try again."] }, status: :unauthorized
  #       end
  #     else
  #       render_not_found
  #     end
  # end

  # def destroy
  #   if session[:employee_id]
  #   session.delete(:employee_id)
  #   session.delete(:full_name)
  #   head :no_content
  #   else
  #     render json: {errors: ["No logged in user found"]}
  #   end      
  # end

  # private

  # def render_not_found
  #   render json: { errors: ['Invalid email address, please try again later'] }, status: 401
  # end
  
  # def login_params 
  #   params.permit(:email, :password)
  # end