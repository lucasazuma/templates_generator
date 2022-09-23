class Api::BikeController < Api::ApiController
  def create
    @bike = Bike.create(bike_params)
    render json: @bike, status: :ok
  end

  def update
    @bike = Bike.update(bike_params)
    render json: @bike, status: :ok
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy!
  end

  def index
    @bike = Bike.find(params[:id])
    render json: @bike, status: :ok
  end

  def show
    @bike = Bike.find(params[:id])
    render json: @bike, status: :ok
  end

  private
  def bike_params
    params.require(:bike).permit(:title, :number)
  end
end