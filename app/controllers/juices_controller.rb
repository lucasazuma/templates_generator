class JuicesController < ApplicationController
  def create
    @juice = Juice.create(juice_params)
    render json: @juice, status: :ok
  end

  def update
    @juice = Juice.update(juice_params)
    render json: @juice, status: :ok
  end

  def destroy
    @juice = Juice.find(params[:id])
    @juice.destroy!
  end

  def index
    @juice = Juice.all
    render json: @juice, status: :ok
  end

  def show
    @juice = Juice.find(params[:id])
    render json: @juice, status: :ok
  end

  private

  def juice_params
    params.require(:juice).permit(:name, :number)
  end
end