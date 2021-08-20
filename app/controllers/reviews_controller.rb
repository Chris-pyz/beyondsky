class ReviewsController < ApplicationController

  # /spaceships/:spaceship_id/bookings/:booking_id/reviews
  # def index
  #   @reviews = Review.all
  # end

  # /spaceships/:spaceship_id/bookings/:booking_id/reviews/:id
  # def show
  #   @review = Review.find(params[:id])
  # end

  # /spaceships/:spaceship_id/bookings/:booking_id/reviews/new
  def new
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.find(:booking_id)
    @review = Review.new
  end

  # /spaceships/:spaceship_id/bookings/:booking_id/reviews
  def create
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.find(:booking_id)
    @review = Review.new(review_params)
    @review.spaceship.booking = @spaceship
    if @review.save
      redirect_to @spaceship
    else
      render 'new'
    end
  end

  # /spaceships/:spaceship_id/bookings/:booking_id/reviews/:id/edit
  def edit
  end

  # /spaceships/:spaceship_id/bookings/:booking_id/reviews/:id
  def updated
  end

  # /spaceships/:spaceship_id/bookings/:booking_id/reviews/:id
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user), notice: 'booking was successfully deleted.'
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
