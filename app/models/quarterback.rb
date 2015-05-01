class Quarterback < ActiveRecord::Base

  def self.find_max_qb #(opponent, parameter, week)
    Quarterback.where("Player = ?", "Russell Wilson")
    # Quarterback.maximum(:Rushing_Yards)
  end
end
