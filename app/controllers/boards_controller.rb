class BoardsController < ApplicationController
  before_action :set_dad
  def create
    @board = @dad.boards.create(board_params)
    render json: @board, status: :ok
  end

  def update
    @board = @dad.boards.find(params[:id])
    @board.update(board_params)
    render json: @board, status: :ok
  end

  def destroy
    @board = @dad.boards.find(params[:id])
    @board.destroy!
  end

  def index
    @boards = @dad.boards
    render json: @boards, status: :ok
  end

  def show
    @board = @dad.boards.find(params[:id])
    render json: @board, status: :ok
  end

  private

  def board_params
    params.require(:board).permit(:name, :number, :dad)
  end

  def set_dad
    @dad = Dad.find(params[:dad_id])
  end
end