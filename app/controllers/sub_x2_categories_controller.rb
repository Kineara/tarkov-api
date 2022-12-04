class SubX2CategoriesController < ApplicationController
  def index 
    @sub_x2_categories = SubX2Category.all 
    render json: @sub_x2_categories 
  end

  def create 
    sub_x2_category = SubX2Category.create(sub_x2_categories_params)
    render json: sub_x2_category, status: :created 
  end

  def show 
    sub_x2_category = SubX2Category.find(params[:id])
    render json: sub_x2_category 
  end

  def update 
    sub_x2_category = SubX2Category.find(params[:id])
    sub_x2_category.update(sub_x2_categories_params)
    render json: sub_x2_category
  end

  def destroy 
    sub_x2_category = SubX2Category.find(params[:id])
    sub_x2_category.destroy 
    head :no_content 
  end

  private 

  def sub_x2_categories_params 
    params.require(:sub_x2_categories).permit(:name)
  end
end
