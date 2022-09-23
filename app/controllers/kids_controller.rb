class KidsController < ApplicationController
  def create
    @kid = Kid.create(kid_params)
    render json: @kid, status: :ok
  end

  def update
    @kid = Kid.update(kid_params)
    render json: @kid, status: :ok
  end

  def destroy
    @kid = Kid.find(params[:id])
    @kid.destroy!
  end

  def index
    @kid = Kid.all
    render json: @kid, status: :ok
  end

  def show
    @kid = Kid.find(params[:id])
    render json: @kid, status: :ok
  end

  private

  def kid_params
    
    params.require(:kid).permit(:name, :number)
  end
end