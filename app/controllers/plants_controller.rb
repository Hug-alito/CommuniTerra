class PlantsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @plant = Plant.find_by(id: params[:id])

    if @plant.nil?
      redirect_to plants_path
      # mettre un message d'erreur
    end
  end

  def index
    @plants = Plants.all
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
