class TestsController < ApplicationController
  def create
    @test = Test.create(test_params)
    render json: @test, status: :ok
  end

  def update
    @test = Test.update(test_params)
    render json: @test, status: :ok
  end

  def destroy
    @test = Test.find(params[:id])
    @test.destroy!
  end

  def index
    @test = Test.all
    render json: @test, status: :ok
  end

  def show
    @test = Test.find(params[:id])
    render json: @test, status: :ok
  end

  private

  def test_params
    father
    params.require(:test).permit(:name, :number)
  end
end