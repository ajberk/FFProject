class Position < ActiveRecord::Base

  def self.find_best_player_each_week_against(opp)
    week = 1
    max = Position.where("week = ? AND (opponent = ? OR opponent = ?)",
     week, opp, "@#{opp}").maximum(:points)
    query = "SELECT * FROM positions WHERE week = 1 AND points = #{max}
      AND (opponent = '#{opp}' OR opponent = '@#{opp}')"
    while week < 18
      max = Position.where("week = ? AND (opponent = ? OR opponent = ?)",
       week, opp, "@#{opp}").maximum(:points)
      if max
        query += " UNION SELECT * FROM positions WHERE week = #{week}
          AND points = #{max} AND (opponent = '#{opp}' OR opponent = '@#{opp}')"
      end
      week += 1
    end
    query += "ORDER BY week"
    self.find_by_sql(query)
  end
end
