class WeaponsController < ApplicationController
  def index 
    weapons = Weapon.all 
    render json: weapons 
  end

  def show 
    weapon = Weapon.find(params[:id])
    render json: weapon, except: [:accepted_ammunition, :mods_str, :timestamp] #, include: :weapon_mod_categories 
  end
end
