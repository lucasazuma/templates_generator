class ComputersController < ApplicationController
  def create
    @computer = Computer.create(computer_params)
    render json: @computer, status: :ok
  end

  def update
    @computer = Computer.update(computer_params)
    render json: @computer, status: :ok
  end

  def destroy
    @computer = Computer.find(params[:id])
    @computer.destroy!
  end

  def index
    @computer = Computer.all
    render json: @computer, status: :ok
  end

  def show
    @computer = Computer.find(params[:id])
    render json: @computer, status: :ok
  end

  private

  def computer_params
    params.require(:computer).permit(:name, :number)
  end
end