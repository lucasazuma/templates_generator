class StringsController < ApplicationController
  def create
    @string = String.create(string_params)
    render json: @string, status: :ok
  end

  def update
    @string = String.update(string_params)
    render json: @string, status: :ok
  end

  def destroy
    @string = String.find(params[:id])
    @string.destroy!
  end

  def index
    @string = String.all
    render json: @string, status: :ok
  end

  def show
    @string = String.find(params[:id])
    render json: @string, status: :ok
  end

  private
  def string_params
    params.require(:string).permit(:title, :number)
  end
end