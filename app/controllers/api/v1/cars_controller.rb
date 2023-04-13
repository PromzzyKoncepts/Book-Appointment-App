class Api::V1::CarsController < ApplicationController
  skip_before_action :authenticate_request # , only: %i[create login index]

  def index
    @cars = Car.all
    render json: {
      status: 201,
      message: 'Cars has been successfully shown',
      data: @cars
    }, status: :created
  end

  # GET /cars/1
  def show
    @car = Car.find(params[:id])
    render json: {
      status: 201,
      message: 'Car has been successfully shown',
      data: @car
    }, status: :ok
  end

  # GET /car/new
  def new
    @car = Car.new
    render json: @car
  end

  # POST /cars
  def create
    @car = Car.new(car_params)

    if @car.save!
      render json: {
        status: 201,
        message: 'Car has been successfully created',
        data: @car
      }, status: :created
    else
      render json: { error: 'ERROR: Unable to create the car' }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cars/1
  def update
    car = Car.find(params[:id])
    if car.update(car_params)
      render json: { status: 'SUCCESS', message: 'car updated successfully', data: car }, status: :ok
    else
      render json: { status: 'ERROR', message: 'An error occurred while updating the car', data: car.errors },
             status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  def destroy
    @car = Car.find_by(id: params[:id])

    if @car.destroy
      render json: { message: 'Car deleted successfully', id: params[:id] }
    else
      render json: { message: 'An error occured, plese try again' }, status: :unprocessable_entity
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def car_params
    params.require(:car).permit(:name, :model, :image_url, :reserved, :price, :user_id, :description)
  end
end
