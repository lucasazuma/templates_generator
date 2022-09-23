class BallsController < ApplicationController
  def create
    @ball = @category.balls.create(ball_params)
    render json: @ball, status: :ok
  end

  def update
    @ball = @category.balls.find(params[:id])
    @ball.update(ball_params)
    render json: @ball, status: :ok
  end

  def destroy
    @ball = @category.balls.find(params[:id])
    @ball.destroy!
  end

  def index
    @balls = @category.balls
    render json: @ball, status: :ok
  end

  def show
    @ball = @category.balls.find(params[:id])
    render json: @ball, status: :ok
  end

  private

  def ball_params
    Category
    params.require(:ball).permit(:name, :number)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end