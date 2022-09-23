class AnimalsController < ApplicationController
  def create
    @animal = @category.animals.create(animal_params)
    render json: @animal, status: :ok
  end

  def update
    @animal = @category.animals.find(params[:id])
    @animal.update(animal_params)
    render json: @animal, status: :ok
  end

  def destroy
    @animal = @category.animals.find(params[:id])
    @animal.destroy!
  end

  def index
    @animals =  @category.animals
    render json: @animal, status: :ok
  end

  def show
    @animal = @category.animals.find(params[:id])
    render json: @animal, status: :ok
  end

  private

  def animal_params
    Category
    params.require(:animal).permit(:name, :number)
  end

  def set_category
    @category = category.find(params[:category_id])
  end
end