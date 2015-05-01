class PositionsController < Api::ApplicationController

  def index
    @position = Position.all
  end
end
