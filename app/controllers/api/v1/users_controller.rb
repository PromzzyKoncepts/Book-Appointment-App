class Api::V1::UsersController < ApplicationController
  # GET /users
  def index
    @users = User.all

    render json: { status: 'SUCCESS', message: 'Loaded Users', data: @users }, status: :ok
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: { status: 'SUCCESS', message: 'User was successfully created', data: @user }, status: :ok
    else
      render json: { status: 'ERROR', message: 'An error occurred while creating the user' },
             status: :unprocessable_entity
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def user_params
    params.permit(:id, :name, :email, :password)
  end
end
