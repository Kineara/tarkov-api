class SubCategoriesController < ApplicationController
  def index 
    @sub_categories = find_sub_categories 
    render json: @sub_categories  
  end

  def create 
    sub_category = find_sub_category 
    render json: sub_category, status: :created 
  end

  def show 
    sub_category = SubCategory.find(params[:id])
    render json: sub_category 
  end

  def update 
    sub_category = SubCategory.find(params[:id])
    sub_category.update(sub_categories_params)
    render json: sub_category
  end

  def destroy 
    sub_category = SubCategory.find(params[:id])
    sub_category.destroy 
    head :no_content 
  end

  private 

  def sub_categories_params 
    params.require(:sub_categories).permit(:name)
  end

  def find_sub_categories
    game_version = GameVersion.find(params[:game_version_id])
    sub_categories = game_version.handbook.categories.find(params[:category_id]).sub_categories.all 
  end

  def find_sub_category 
    game_version = GameVersion.find(params[:game_version_id])
    sub_categories = game_version.handbook.categories.find(params[:category_id]).sub_categories.find(params[:sub_category_id])
  end
end
