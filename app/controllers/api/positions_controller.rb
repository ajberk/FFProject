class Api::PositionsController < ApplicationController

  def index
    @positions = Position.limit(5)
  end

  def show
    @position = Position.find(params[:id])
  end

  def position_params
  end
end
