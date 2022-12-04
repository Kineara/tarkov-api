class GameVersionsController < ApplicationController
  def index 
    @gameVersions = GameVersion.all 
    render json: @gameVersions 
  end

  def show 
    @gameVersion = GameVersion.find(params[:id])
    render json: @gameVersion 
  end

  def create 
    gameVersion = GameVersion.create(game_version_params)
    render json: gameVersion, status: :created 
  end

  def update 
    gameVersion = GameVersion.find(params[:id])
    gameVersion.update(game_version_params)
    render json: gameVersion 
  end

  def destroy 
    gameVersion = GameVersion.find(params[:id]) 
    gameVersion.destroy 
    head :no_content 
  end

  private 

  def game_version_params 
    params.require(:game_version).permit(:name, :current_version)
  end
end
