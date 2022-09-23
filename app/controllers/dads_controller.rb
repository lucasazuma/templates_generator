class DadsController < ApplicationController
  def create
    @dad = Dad.create(dad_params)
    render json: @dad, status: :ok
  end

  def update
    @dad = Dad.update(dad_params)
    render json: @dad, status: :ok
  end

  def destroy
    @dad = Dad.find(params[:id])
    @dad.destroy!
  end

  def index
    @dad = Dad.all
    render json: @dad, status: :ok
  end

  def show
    @dad = Dad.find(params[:id])
    render json: @dad, status: :ok
  end

  private

  def dad_params
    params.require(:dad).permit(:name, :number)
  end
end