class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: @cars
  end

  # GET /cars/1
  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  # POST /cars
  def create
    @car = Car.new(car_params)

    if @car.save
      render json: @car
    else
      render :new, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  def destroy
    @car = Car.find_by(id: params[:id])

    if @car.destroy
      render json: { message: 'Car deleted successfully' }
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
