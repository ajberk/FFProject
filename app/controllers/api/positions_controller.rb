class Api::PositionsController < ApplicationController
  has_scope :opponent

  def index
    # @positions = apply_scopes(Position).where(id: 51)
    @positions = apply_scopes(Position).where(week: 1)
    # week = 2
    # while week < 4
    #   max = @positions.where(week: week).maximum(:points)
    #   @positions.merge(apply_scopes(Position).where(week: week))
    #   week+=1
    # end

    @positions
  end

  def show
    @position = Position.find(params[:id])
  end
end
