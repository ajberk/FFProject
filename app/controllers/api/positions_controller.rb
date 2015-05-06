class Api::PositionsController < ApplicationController
  has_scope :opponent

  def index
    opp = params[:opponent]
    @positions = Position.find_best_player_each_week_against(opp)
  end

  def show
    @position = Position.find(params[:id])
  end
end
