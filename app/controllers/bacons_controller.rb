class BaconsController < ApplicationController
  def create
    @bacon = @category.bacons.create(bacon_params)
    render json: @bacon, status: :ok
  end

  def update
    @bacon = @category.bacons.find(params[:id])
    @bacon.update(bacon_params)
    render json: @bacon, status: :ok
  end

  def destroy
    @bacon = @category.bacons.find(params[:id])
    @bacon.destroy!
  end

  def index
    @bacons = @category.bacons
    render json: @bacon, status: :ok
  end

  def show
    @bacon = @category.bacons.find(params[:id])
    render json: @bacon, status: :ok
  end

  private

  def bacon_params
    Category
    params.require(:bacon).permit(:name, :number)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end