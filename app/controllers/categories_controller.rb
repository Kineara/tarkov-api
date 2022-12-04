class CategoriesController < ApplicationController
  def index 
    @game_version = GameVersion.find(params[:game_version_id])
    @categories = @game_version.handbook.categories.all 
    render json: @categories
  end

  def create 
    category = Category.create(categories_params)
    render json: category, status: :created 
  end

  def show 
    category = Category.find(params[:id])
    render json: category 
  end

  def update 
    category = Category.find(params[:id])
    category.update(categories_params)
    render json: category
  end

  def destroy 
    category = Category.find(params[:id])
    category.destroy 
    head :no_content 
  end

  private 

  def categories_params 
    params.require(:categories).permit(:name)
  end
end
