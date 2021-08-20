class BookingsController < ApplicationController

  # /spaceships/:spaceship_id/bookings
  def index
  # if params[:address].present? && params[:capacity].present?
  #   @spaceships = Spaceship.search_by_address(params[:address])
  # elsif params[:address].present?
  #   @spaceships = Spaceship.search_by_address(params[:address])
  # else
  #   @spaceships = Spaceship.all
  # end



    @bookings = Booking.all
    @bookings = policy_scope(Booking)
  end

  # spaceships/:spaceship_id/bookings/:id
  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  # /spaceships/:id/bookings/new
  def new
    @booking = Booking.new
    @spaceship = Spaceship.find(params[:spaceship_id])
    authorize @booking
  end

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = 'confirmed'
    @booking.save!

    redirect_to user_path(current_user), notice: 'booking was successfully confirmed.'
  end

  def create
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new(booking_params)
    @booking.spaceship = @spaceship
    @booking.user = current_user
    @booking.status = "pending"
    authorize @booking

    if @booking.save

      redirect_to user_path(current_user), notice: 'booking was successfully created.'
    else
      render :new

    end
  end


  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to user_path(current_user), notice: 'booking was successfully deleted.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
