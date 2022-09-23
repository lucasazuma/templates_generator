class Api::BookController < Api::ApiController
  def create
    @book = Book.create(book_params)
    render json: @book, status: :ok
  end

  def update
    @book = Book.update(book_params)
    render json: @book, status: :ok
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy!
  end

  def index
    @book = Book.find(params[:id])
    render json: @book, status: :ok
  end

  def show
    @book = Book.find(params[:id])
    render json: @book, status: :ok
  end

  private
  def book_params
    params.require(:book).permit(:title, :number)
  end
end