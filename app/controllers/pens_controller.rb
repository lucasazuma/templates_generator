class PensController < ApplicationController
  def create
    @pen = @dad.pens.create(pen_params)
    render json: @pen, status: :ok
  end

  def update
    @pen = @dad.pens.find(params[:id])
    @pen.update(pen_params)
    render json: @pen, status: :ok
  end

  def destroy
    @pen = @dad.pens.find(params[:id])
    @pen.destroy!
  end

  def index
    @pens = @dad.pens
    render json: @pen, status: :ok
  end

  def show
    @pen = @dad.pens.find(params[:id])
    render json: @pen, status: :ok
  end

  private

  def pen_params
    Dad
    params.require(:pen).permit(:name, :number, :dad)
  end

  def set_dad
    @dad = Dad.find(params[:dad_id])
  end
end