class ChildrenController < ApplicationController
  def create
    @child = @dad.children.create(child_params)
    render json: @child, status: :ok
  end

  def update
    @child = @dad.children.find(params[:id])
    @child.update(child_params)
    render json: @child, status: :ok
  end

  def destroy
    @child = @dad.children.find(params[:id])
    @child.destroy!
  end

  def index
    @children = @dad.children
    render json: @child, status: :ok
  end

  def show
    @child = @dad.children.find(params[:id])
    render json: @child, status: :ok
  end

  private

  def child_params
    Dad
    params.require(:child).permit(:name, :number)
  end

  def set_dad
    @dad = Dad.find(params[:dad_id])
  end
end