class EggsController < ApplicationController
  def create
    @egg = Egg.create(egg_params)
    render json: @egg, status: :ok
  end

  def update
    @egg = Egg.update(egg_params)
    render json: @egg, status: :ok
  end

  def destroy
    @egg = Egg.find(params[:id])
    @egg.destroy!
  end

  def index
    @egg = Egg.all
    render json: @egg, status: :ok
  end

  def show
    @egg = Egg.find(params[:id])
    render json: @egg, status: :ok
  end

  private

  def egg_params
    
    params.require(:egg).permit(:name, :number)
  end
end