class NutsController < ApplicationController
  def create
    @nut = Nut.create(nut_params)
    render json: @nut, status: :ok
  end

  def update
    @nut = Nut.update(nut_params)
    render json: @nut, status: :ok
  end

  def destroy
    @nut = Nut.find(params[:id])
    @nut.destroy!
  end

  def index
    @nut = Nut.all
    render json: @nut, status: :ok
  end

  def show
    @nut = Nut.find(params[:id])
    render json: @nut, status: :ok
  end

  private

  def nut_params
    
    params.require(:nut).permit(:name, :number, :dad)
  end
end