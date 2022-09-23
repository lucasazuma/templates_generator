class PostController < ApplicationController
  def create
    @post = Post.create(post_params)
    render json: @post, status: :ok
  end

  def update
    @post = Post.update(post_params)
    render json: @post, status: :ok
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
  end

  def index
    @post = Post.find(params[:id])
    render json: @post, status: :ok
  end

  def show
    @post = Post.find(params[:id])
    render json: @post, status: :ok
  end

  private
  def post_params
    params.require(:post).permit(:title, :number)
  end
end