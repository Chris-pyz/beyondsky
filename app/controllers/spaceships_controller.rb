class SpaceshipsController < ApplicationController

  def index
  if params[:address].present? && params[:capacity].present?
    @spaceships = Spaceship.search_by_address(params[:address])
  elsif params[:address].present?
    @spaceships = Spaceship.search_by_address(params[:address])
  else
    @spaceships = Spaceship.all
  end
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
    @markers = [{
      lat: @spaceship.latitude,
      lng: @spaceship.longitude,
      info_window: render_to_string(partial: "info_window", locals: { spaceship: @spaceship }),
      image_url: helpers.asset_url('Beyondskylogo.png')

    }]

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

  # GET /spaceships/:id/edit  - edit_spaceship
  def edit
    @spaceship = Spaceship.find(params[:id])
  end

  # PATCH-PUT  /spaceships/:id
  def update
    @spaceship = Spaceship.find(params[:id])
    if @spaceship.update(spaceship_params)
      redirect_to @spaceship, notice: 'Spaceship was successfully updated.'
    else
      render :edit
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
