class PlantsController < ApplicationController
  before_action :authenticate_user, only: [:edit, :update]

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(description: params[:description], common_name: params[:common_name], latin_name: params[:latin_name], specie: params[:specie], vegetation: params[:vegetation], foliage: params[:foliage], mature_height: params[:mature_height], mature_width: params[:mature_width], maintenance_level: params[:maintenance_level], maintenance_description: params[:maintenance_description], water_requirement_level: params[:water_requirement_level], water_requirement_description: params[:water_requirement_description], cold_resistance_level: params[:cold_resistance_level], cold_resistance_description: params[:cold_resistance_description], density: params[:density], exposure_level: params[:exposure_level], exposure_description: params[:exposure_description], flowering: params[:flowering], planting: params[:planting], harvest: params[:harvest], pruning: params[:pruning])
    
    if @plant.save
      flash[:success] = "La plante a bien été rajoutée à la base de données."
      redirect_to '/'
    else
      render :new
    end
  end  

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find_by(id: params[:id])
    
    if @plant.nil?
      redirect_to plants_path, alert: "La plante avec l'ID spécifié n'existe pas."
    end    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
end
