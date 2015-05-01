class Quarterback < ActiveRecord::Base

  def self.find_max_qb #(opponent, parameter, week)
    Quarterback.where("\"Opponent\" = ?", "@Sea").
      where("\"Week\" = ?", 1)
    # Quarterback.maximum(:Rushing_Yards)
  end
end
