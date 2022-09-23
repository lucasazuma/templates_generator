class CupsController < ApplicationController
  def create
    @cup = Cup.create(cup_params)
    render json: @cup, status: :ok
  end

  def update
    @cup = Cup.update(cup_params)
    render json: @cup, status: :ok
  end

  def destroy
    @cup = Cup.find(params[:id])
    @cup.destroy!
  end

  def index
    @cup = Cup.find(params[:id])
    render json: @cup, status: :ok
  end

  def show
    @cup = Cup.find(params[:id])
    render json: @cup, status: :ok
  end

  private
  def cup_params
    params.require(:cup).permit(:title, :number)
  end
end