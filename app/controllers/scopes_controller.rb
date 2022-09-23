class ScopesController < ApplicationController
  def create
    @scope = Scope.create(scope_params)
    render json: @scope, status: :ok
  end

  def update
    @scope = Scope.update(scope_params)
    render json: @scope, status: :ok
  end

  def destroy
    @scope = Scope.find(params[:id])
    @scope.destroy!
  end

  def index
    @scope = Scope.all
    render json: @scope, status: :ok
  end

  def show
    @scope = Scope.find(params[:id])
    render json: @scope, status: :ok
  end

  private

  def scope_params
    father
    params.require(:scope).permit(:name, :number)
  end
end