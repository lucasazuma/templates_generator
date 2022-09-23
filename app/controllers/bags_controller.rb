class BagsController < ApplicationController
  def create
    @bag = @category.bags.create(bag_params)
    render json: @bag, status: :ok
  end

  def update
    @bag = @category.bags.find(params[:id])
    @bag.update(bag_params)
    render json: @bag, status: :ok
  end

  def destroy
    @bag = @category.bags.find(params[:id])
    @bag.destroy!
  end

  def index
    @bags = @category.bags
    render json: @bag, status: :ok
  end

  def show
    @bag = @category.bags.find(params[:id])
    render json: @bag, status: :ok
  end

  private

  def bag_params
    Category
    params.require(:bag).permit(:name, :number)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end