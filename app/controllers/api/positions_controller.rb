class Api::PositionsController < ApplicationController
  has_scope :id

  def index
    @positions = apply_scopes(Position).limit(10)
  end

  def show
    @position = Position.find(params[:id])
  end
end
