class Api::PapersController < Api::ApiController
  def create
    @paper = Paper.create(paper_params)
    render json: @paper, status: :ok
  end

  def update
    @paper = Paper.update(paper_params)
    render json: @paper, status: :ok
  end

  def destroy
    @paper = Paper.find(params[:id])
    @paper.destroy!
  end

  def index
    @paper = Paper.find(params[:id])
    render json: @paper, status: :ok
  end

  def show
    @paper = Paper.find(params[:id])
    render json: @paper, status: :ok
  end

  private
  def paper_params
    params.require(:paper).permit(:title, :number)
  end
end