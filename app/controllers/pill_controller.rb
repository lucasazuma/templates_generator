class PillsController < ApplicationController
  def create
    @pill = Pill.create(pill_params)
    render json: @pill, status: :ok
  end

  def update
    @pill = Pill.update(pill_params)
    render json: @pill, status: :ok
  end

  def destroy
    @pill = Pill.find(params[:id])
    @pill.destroy!
  end

  def index
    @pill = Pill.find(params[:id])
    render json: @pill, status: :ok
  end

  def show
    @pill = Pill.find(params[:id])
    render json: @pill, status: :ok
  end

  private
  def pill_params
    params.require(:pill).permit(:title, :number)
  end
end