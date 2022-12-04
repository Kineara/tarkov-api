class GameVersionsController < ApplicationController
  def index 
    @gameVersions = GameVersion.all 
    render json: @gameVersions 
  end

  def show 
    @gameVersion = GameVersion.find(params[:id])
    render json: @gameVersion 
  end
end
