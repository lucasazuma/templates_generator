class LidsController < ApplicationController
  def create
    @lid = @lids.create(lid_params)
    render json: @lid, status: :ok
  end

  def update
    @lid = @lids.find(params[:id])
    @lid.update(lid_params)
    render json: @lid, status: :ok
  end

  def destroy
    @lid = @lids.find(params[:id])
    @lid.destroy!
  end

  def index
    @lids =  @lids
    render json: @lid, status: :ok
  end

  def show
    @lid = @lids.find(params[:id])
    render json: @lid, status: :ok
  end

  private

  def lid_params
    Category
    params.require(:lid).permit(:name, :number)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end