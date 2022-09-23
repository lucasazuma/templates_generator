class WatersController < ApplicationController
  def create
    @water = Water.create(water_params)
    render json: @water, status: :ok
  end

  def update
    @water = Water.update(water_params)
    render json: @water, status: :ok
  end

  def destroy
    @water = Water.find(params[:id])
    @water.destroy!
  end

  def index
    @water = Water.all
    render json: @water, status: :ok
  end

  def show
    @water = Water.find(params[:id])
    render json: @water, status: :ok
  end

  private

  def water_params
    params.require(:water).permit(:name, :number)
  end
end