module Api::V1::V2::V3::Fathers
  class ChildrenController < ApplicationController
    before_action :set_father
    before_action :set_child, only: %i[ show update destroy ]

    def index
      @children =  @father.children
      render json: @children, status: :ok
    end

    def show
      render json: @child, status: :ok
    end

    def create
      @child = @father.children.create!(child_params)
      render json: @child, status: :created
    end

    def update
      @child.update(child_params)
      render json: @child, status: :ok
    end

    def destroy
      @child.destroy!
    end


    private

    def set_father
      @father = Father.find(params[:father_id])
    end

    def set_child
      @child = @father.children.find(params[:id])
    end

    def child_params
      params.require(:child).permit(:name, :father)
    end
  end
end