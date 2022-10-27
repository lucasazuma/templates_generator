
class WatersController < ApplicationController
  before_action :set_water, only: %i[ show update destroy ]

  def index
    @water = Water.all
    render json: @water, status: :ok
  end

  def show
    render json: @water, status: :ok
  end

  def create
    @water = Water.create!(water_params)
    render json: @water, status: :created
  end

  def update
    @water = @water.update!(water_params)
    render json: @water, status: :ok
  end

  def destroy
    @water.destroy!
  end

  private

  def set_water
    @water = Water.find(params[:id])
  end

  def water_params
    params.require(:water).permit(:name)
  end
end

