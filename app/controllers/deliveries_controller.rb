class DeliveriesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @delivery = Delivery.find_by(id: params[:id])
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
