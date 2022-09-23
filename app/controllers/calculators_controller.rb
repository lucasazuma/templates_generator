class CalculatorsController < ApplicationController
  def create
    @calculator = @dad.calculators.create(calculator_params)
    render json: @calculator, status: :ok
  end

  def update
    @calculator = @dad.calculators.find(params[:id])
    @calculator.update(calculator_params)
    render json: @calculator, status: :ok
  end

  def destroy
    @calculator = @dad.calculators.find(params[:id])
    @calculator.destroy!
  end

  def index
    @calculators = @dad.calculators
    render json: @calculator, status: :ok
  end

  def show
    @calculator = @dad.calculators.find(params[:id])
    render json: @calculator, status: :ok
  end

  private

  def calculator_params
    Dad
    params.require(:calculator).permit(:name, :number, :dad)
  end

  def set_dad
    @dad = Dad.find(params[:dad_id])
  end
end