class PotatosController < ApplicationController
  def create
    @potato = Potato.create(potato_params)
    render json: @potato, status: :ok
  end

  def update
    @potato = Potato.find(params[:id])
    @potato.update!(potato_params)
    render json: @potato, status: :ok
  end

  def destroy
    @potato = Potato.find(params[:id])
    @potato.destroy!
  end

  def index
    @potato = Potato.all
    render json: @potato, status: :ok
  end

  def show
    @potato = Potato.find(params[:id])
    render json: @potato, status: :ok
  end

  private

  def potato_params
    params.require(:potato).permit(:title, :number)
  end
end