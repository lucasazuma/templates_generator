class PedrosController < ApplicationController
  def create
    @pedro = Pedro.create(pedro_params)
    render json: @pedro, status: :ok
  end

  def update
    @pedro = Pedro.update(pedro_params)
    render json: @pedro, status: :ok
  end

  def destroy
    @pedro = Pedro.find(params[:id])
    @pedro.destroy!
  end

  def index
    @pedro = Pedro.all
    render json: @pedro, status: :ok
  end

  def show
    @pedro = Pedro.find(params[:id])
    render json: @pedro, status: :ok
  end

  private

  def pedro_params
    
    params.require(:pedro).permit(:name, :number)
  end
end