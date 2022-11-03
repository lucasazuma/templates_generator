
class FathersController < ApplicationController
  before_action :set_father, only: %i[ show update destroy ]

  def index
    @father = Father.all
    render json: @father, status: :ok
  end

  def show
    render json: @father, status: :ok
  end

  def create
    @father = Father.create!(father_params)
    render json: @father, status: :created
  end

  def update
    @father = Father.update!(father_params)
    render json: @father, status: :ok
  end

  def destroy
    @father.destroy!
  end

  private

  def set_father
    @father = Father.find(params[:id])
  end

  def father_params
    params.require(:father).permit(:name)
  end
end

