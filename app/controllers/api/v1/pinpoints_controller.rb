class Api::V1::PinpointsController < ApplicationController

  def index
    @pinpoints = Pinpoint.all
    render json: @pinpoints
  end

  def show
    @pinpoint = Pinpoint.find(params[:id])
    render json: @pinpoint
  end

end
