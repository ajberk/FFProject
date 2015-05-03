class Api::PositionsController < ApplicationController

  def index
    @positions = Position.all
  end

  def show
    @position = Position.find(params[:id])
  end

  def position_params
  end
end
