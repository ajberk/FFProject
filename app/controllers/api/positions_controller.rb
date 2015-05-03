class Api::PositionsController < ApplicationController
  has_scope :id

  def index
    @positions = apply_scopes(Position).all
  end

  def show
    @position = Position.find(params[:id])
  end

  def position_params
  end
end
