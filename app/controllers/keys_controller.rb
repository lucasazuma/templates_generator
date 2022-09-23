class KeysController < ApplicationController
  def create
    @key = Key.create(key_params)
    render json: @key, status: :ok
  end

  def update
    @key = Key.update(key_params)
    render json: @key, status: :ok
  end

  def destroy
    @key = Key.find(params[:id])
    @key.destroy!
  end

  def index
    @key = Key.all
    render json: @key, status: :ok
  end

  def show
    @key = Key.find(params[:id])
    render json: @key, status: :ok
  end

  private
  def key_params
    params.require(:key).permit(:title, :number)
  end
end