class CarrotsController < ApplicationController
  def create
    @carrot = Carrot.create(carrot_params)
    render json: @carrot, status: :ok
  end

  def update
    @carrot = Carrot.update(carrot_params)
    render json: @carrot, status: :ok
  end

  def destroy
    @carrot = Carrot.find(params[:id])
    @carrot.destroy!
  end

  def index
    @carrot = Carrot.all
    render json: @carrot, status: :ok
  end

  def show
    @carrot = Carrot.find(params[:id])
    render json: @carrot, status: :ok
  end

  private

  def carrot_params
    
    params.require(:carrot).permit(:name, :number)
  end
end