class SubCategoriesController < ApplicationController
  def index 
    @sub_categories = SubCategory.all 
    render json: @sub_categories 
  end

  def create 
    sub_category = SubCategory.create(sub_categories_params)
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
end
