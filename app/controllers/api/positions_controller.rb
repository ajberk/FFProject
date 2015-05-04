class Api::PositionsController < ApplicationController
  has_scope :opponent

  def index
    week = 1
    query = "SELECT * FROM positions WHERE week = #{week}"
    while week < 18
      query += " UNION SELECT * FROM positions WHERE week = #{week}"
      week+= 1
    end

    # results = Position.execute(<<-SQL, 1, 'Ari')
    #   SELECT
    #     *
    #   FROM
    #     positions
    #   WHERE
    #     week = ?
    #   AND
    #     opponent = ?
    # SQL
    @positions = apply_scopes(Position).find_by_sql(query)
  end

  def show
    @position = Position.find(params[:id])
  end
end
