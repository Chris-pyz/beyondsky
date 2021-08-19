class SpaceshipsController < ApplicationController

  def index
    @spaceships = Spaceship.all
        # the `geocoded` scope filters only spaceships with coordinates (latitude & longitude)
    @markers = @spaceships.geocoded.map do |spaceship|
      {
        lat: spaceship.latitude,
        lng: spaceship.longitude,
        info_window: render_to_string(partial: "info_window", locals: { spaceship: spaceship }),
        image_url: helpers.asset_url('Beyondskylogo.png')
      }
    end
  end

  def show
    @spaceship = Spaceship.find(params[:id])
    @markers = {
      lat: @spaceship.latitude,
      lng: @spaceship.longitude,
      info_window: render_to_string(partial: "info_window", locals: { spaceship: @spaceship }),
      image_url: helpers.asset_url('Beyondskylogo.png')
    }

  end

  def new
    @spaceship = Spaceship.new
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = current_user

    if @spaceship.save
      redirect_to @spaceship, notice: 'spaceship was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @spaceship = Spaceship.find(params[:id])
    @spaceship.destroy
    redirect_to spaceships_path, notice: 'spaceship was successfully destroyed.'
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :address, :price, :capacity, :standing, :description, photos: [])
  end
end
