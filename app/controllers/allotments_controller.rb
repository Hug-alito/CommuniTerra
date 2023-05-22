class AllotmentsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @allotment = Allotment.find_by(id: params[:id])
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
