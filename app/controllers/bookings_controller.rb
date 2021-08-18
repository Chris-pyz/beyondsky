class BookingsController < ApplicationController

  # /spaceships/:spaceship_id/bookings
  def index
    @bookings = Booking.all
  end

  # spaceships/:spaceship_id/bookings/:id
  def show
    @booking = Booking.find(params[:id])
  end

  # /spaceships/:id/bookings/new
  def new
    @booking = Booking.new
    @spaceship = Spaceship.find(params[:spaceship_id])
  end

  def create
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new(booking_params)
    @booking.spaceship = @spaceship
    @booking.user = current_user
    @booking.status = "pending"

    if @booking.save

      redirect_to user_path(current_user), notice: 'booking was successfully created.'
    else
      render :new

    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
