class GlassesController < ApplicationController
  def create
    @glass = @.glasses.create(glass_params)
    render json: @glass, status: :ok
  end

  def update
    @glass = @.glasses.find(params[:id])
    @glass.update(glass_params)
    render json: @glass, status: :ok
  end

  def destroy
    @glass = @.glasses.find(params[:id])
    @glass.destroy!
  end

  def index
    @glasses =  @.glasses
    render json: @glass, status: :ok
  end

  def show
    @glass = @.glasses.find(params[:id])
    render json: @glass, status: :ok
  end

  private

  def glass_params
    Category
    params.require(:glass).permit(:name, :number)
  end

  def set_category
    @category = category.find(params[:category_id])
  end
end