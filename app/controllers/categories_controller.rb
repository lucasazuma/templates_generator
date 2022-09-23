class CategoriesController < ApplicationController
  def create
    @category = Category.create(category_params)
    render json: @category, status: :ok
  end

  def update
    @category = Category.update(category_params)
    render json: @category, status: :ok
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy!
  end

  def index
    @category = Category.all
    render json: @category, status: :ok
  end

  def show
    @category = Category.find(params[:id])
    render json: @category, status: :ok
  end

  private

  def category_params
    
    params.require(:category).permit(:name, :number)
  end
end