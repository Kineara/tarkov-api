class SubX3CategoriesController < ApplicationController
  def index 
    @sub_x3_categories = SubX3Category.all 
    render json: @sub_x3_categories 
  end

  def create 
    sub_x3_category = SubX3Category.create(sub_x3_categories_params)
    render json: sub_x3_category, status: :created 
  end

  def show 
    sub_x3_category = SubX3Category.find(params[:id])
    render json: sub_x3_category 
  end

  def update 
    sub_x3_category = SubX3Category.find(params[:id])
    sub_x3_category.update(sub_x3_categories_params)
    render json: sub_x3_category
  end

  def destroy 
    sub_x3_category = SubX3Category.find(params[:id])
    sub_x3_category.destroy 
    head :no_content 
  end

  private 

  def sub_x3_categories_params 
    params.require(:sub_x3_categories).permit(:name)
  end
end
