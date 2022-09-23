class Api::ThingController < Api::ApiController
  def create
    @thing = Thing.create(thing_params)
    render json: @thing, status: :ok
  end

  def update
    @thing = Thing.update(thing_params)
    render json: @thing, status: :ok
  end

  def destroy
    @thing = Thing.find(params[:id])
    @thing.destroy!
  end

  def index
    @thing = Thing.find(params[:id])
    render json: @thing, status: :ok
  end

  def show
    @thing = Thing.find(params[:id])
    render json: @thing, status: :ok
  end

  private
  def thing_params
    params.require(:thing).permit(:name, :number)
  end
end