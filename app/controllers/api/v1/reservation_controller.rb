class Api::V1::ReservationController < ApplicationController
  # GET /reservations
  def index
    reservations = Reservation.order('created_at DESC')

    render json: { status: 'SUCCESS', message: 'Loaded Reservations', data: reservations }, status: :ok
  end

  # GET /reservations/1
  def show
    reservation = Reservation.find_by_id(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded Reservation', data: reservation }, status: :ok
  end

  # POST /reservations
  def create
    reservation = Reservation.new(reservation_params)

    if reservation.save
      render json: { status: 'SUCCESS', message: 'Reservation was successfully created', data: reservation },
             status: :ok
    else
      render json: { status: 'ERROR', message: 'An error occurred while creating the reservationReservation Not created', data: reservation.errors },
             status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    reservation = Reservation.find_by_id(params[:id])
    reservation.destroy
    render json: { status: 'SUCCESS', message: 'Reservation deleted successfully', data: reservation }, status: :ok
  end

  # PATCH/PUT /reservations/1
  def update
    reservation = Reservation.find(params[:id])
    if reservation.update(reservation_params)
      render json: { status: 'SUCCESS', message: 'Reservation updated successfully', data: reservation }, status: :ok
    else
      render json: { status: 'ERROR', message: 'An error occurred while updating the reservation', data: reservation.errors },
             status: :unprocessable_entity
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require('reservation').permit(:date, :city, :user_id, :car_id)
  end
end
