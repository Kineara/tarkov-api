class WeaponModsController < ApplicationController
  def index 
    mods = WeaponMod.all 
    render json: mods 
  end
end
