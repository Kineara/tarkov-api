class WeaponModsController < ApplicationController
  def index 
    mods = WeaponMod.all 
    render json: mods 
  end

  def show 
    weapon_mod = WeaponMod.find(params[:id])
    render json: weapon_mod 
  end
end
