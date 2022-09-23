class TreesController < ApplicationController
  def create
    @tree = @dad.trees.create(tree_params)
    render json: @tree, status: :ok
  end

  def update
    @tree = @dad.trees.find(params[:id])
    @tree.update(tree_params)
    render json: @tree, status: :ok
  end

  def destroy
    @tree = @dad.trees.find(params[:id])
    @tree.destroy!
  end

  def index
    @trees = @dad.trees
    render json: @tree, status: :ok
  end

  def show
    @tree = @dad.trees.find(params[:id])
    render json: @tree, status: :ok
  end

  private

  def tree_params
    Dad
    params.require(:tree).permit(:name, :number)
  end

  def set_dad
    @dad = Dad.find(params[:dad_id])
  end
end