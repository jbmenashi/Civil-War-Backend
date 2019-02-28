class Api::V1::CirclesController < ApplicationController

  def index
    @circles = Circle.all
    render json: @circles
  end

  def show
    @circle = Circle.find(params[:id])
    render json: @circle
  end

end
