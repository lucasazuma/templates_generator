class TubesController < ApplicationController
  def create
    @tube = @category.tubes.create(tube_params)
    render json: @tube, status: :ok
  end

  def update
    @tube = @category.tubes.find(params[:id])
    @tube.update(tube_params)
    render json: @tube, status: :ok
  end

  def destroy
    @tube = @category.tubes.find(params[:id])
    @tube.destroy!
  end

  def index
    @tubes = @category.tubes
    render json: @tube, status: :ok
  end

  def show
    @tube = @category.tubes.find(params[:id])
    render json: @tube, status: :ok
  end

  private

  def tube_params
    Category
    params.require(:tube).permit(:name, :number)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end