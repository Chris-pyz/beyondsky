class SpaceshipsController < ApplicationController

  def index
    @spaceships = Spaceship.all
  end

  def show
    @spaceship = Spaceship.find(params[:id])
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
    params.require(:spaceship).permit(:name, :address, :price, :capacity, :standing, :description)
  end
end
