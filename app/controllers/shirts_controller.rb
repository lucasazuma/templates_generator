class ShirtsController < ApplicationController
  before_action :set_dad
  def create
    @shirt = @dad.shirts.create(shirt_params)
    render json: @shirt, status: :ok
  end

  def update
    @shirt = @dad.shirts.find(params[:id])
    @shirt.update(shirt_params)
    render json: @shirt, status: :ok
  end

  def destroy
    @shirt = @dad.shirts.find(params[:id])
    @shirt.destroy!
  end

  def index
    @shirts = @dad.shirts
    render json: @shirts, status: :ok
  end

  def show
    @shirt = @dad.shirts.find(params[:id])
    render json: @shirt, status: :ok
  end

  private

  def shirt_params
    Dad
    params.require(:shirt).permit(:name, :number, :dad)
  end

  def set_dad
    @dad = Dad.find(params[:dad_id])
  end
end