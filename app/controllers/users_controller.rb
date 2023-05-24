class UsersController < ApplicationController
  before_action :authenticate_user, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update, :destroy]

  def show
    @current_user = current_user
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if current_user == @user && @user.update(first_name: params[:user][:first_name], last_name: params[:user][:last_name], description: params[:user][:description])
        flash[:success] = "Le profil a été modifié avec succès."
        redirect_to root_path
      else
        render :edit
      end
    end

  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end

  def authorize_user
    redirect_to root_path unless current_user.id == params[:id].to_i
  end

end
