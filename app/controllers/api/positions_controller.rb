class Api::PositionsController < ApplicationController
  has_scope :opponent

  def index
    week = 1
    opp = params[:opponent]
    max = apply_scopes(Position).where(week: week).maximum(:points)
    query = "SELECT * FROM positions WHERE week = 1 AND points = #{max}
            AND (opponent = '#{opp}' OR opponent = '@#{opp}')"
    while week < 18
      max = apply_scopes(Position).where(week: week).maximum(:points)
      if max
        query += " UNION SELECT * FROM positions WHERE week = #{week}
                AND points = #{max} AND (opponent = '#{opp}' OR opponent = '@#{opp}')"
      end
      week += 1
    end
    query += "ORDER BY week"
    @positions = Position.find_by_sql(query)
  end

  def show
    @position = Position.find(params[:id])
  end
end
