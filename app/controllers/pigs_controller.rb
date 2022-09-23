class PigsController < ApplicationController
  def create
    @pig = @category.pigs.create(pig_params)
    render json: @pig, status: :ok
  end

  def update
    @pig = @category.pigs.find(params[:id])
    @pig.update(pig_params)
    render json: @pig, status: :ok
  end

  def destroy
    @pig = @category.pigs.find(params[:id])
    @pig.destroy!
  end

  def index
    @pigs = @category.pigs
    render json: @pig, status: :ok
  end

  def show
    @pig = @category.pigs.find(params[:id])
    render json: @pig, status: :ok
  end

  private

  def pig_params
    Category
    params.require(:pig).permit(:name, :number)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end