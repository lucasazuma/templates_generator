class ItemsController < ApplicationController
  def create
    @item = @items.create(item_params)
    render json: @item, status: :ok
  end

  def update
    @item = @items.find(params[:id])
    @item.update(item_params)
    render json: @item, status: :ok
  end

  def destroy
    @item = @items.find(params[:id])
    @item.destroy!
  end

  def index
    @items =  @items
    render json: @item, status: :ok
  end

  def show
    @item = @items.find(params[:id])
    render json: @item, status: :ok
  end

  private

  def item_params
    Category
    params.require(:item).permit(:name, :number)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end