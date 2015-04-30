class Api::QuarterbacksController < ApplicationController

  def show
    @quarterback = Quarterback.find(params[:id])
  end

  private
  def quarterback_params
    self.params.require(:quarterback).permit(:Player, :Team, :Opponent, :Passing_Attempts,
    :Passing_Completions, :Passing_Yards,
    :Passing_TD, :Interceptions, :Passing_2Pt,
    :Rushing_Attempts, :Rushing_Yards, :Rushing_TD,
    :Rushing_2Pt_Conversions,	:Receptions, :Recieving_Yds,
    :Recieving_TD, :Recieving_2Pt_Conversions, :Fumbles_Lost,
    :Fumble_TD,	:Points, :Week )
  end
end
