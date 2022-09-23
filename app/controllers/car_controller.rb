class Api::CarController < Api::ApiController
  def create
    @car = Car.create(car_params)
    render json: @car, status: :ok
  end

  def update
    @car = Car.update(car_params)
    render json: @car, status: :ok
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy!
  end

  def index
    @car = Car.find(params[:id])
    render json: @car, status: :ok
  end

  def show
    @car = Car.find(params[:id])
    render json: @car, status: :ok
  end

  private
  def car_params
    params.require(:car).permit(:title, :number)
  end
end