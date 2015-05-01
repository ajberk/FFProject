class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string  :player
      t.string  :position
      t.string  :team
      t.string  :opponent
      t.integer :passing_attempts
      t.integer :passing_completions
      t.integer :passing_yards
      t.integer :passing_td
      t.integer :tnterceptions
      t.integer :passing_2Pt
      t.integer :rushing_attempts
      t.integer :rushing_yards
      t.integer :rushing_td
      t.integer :rushing_2Pt_conversions
      t.integer :receptions
      t.integer :recieving_yds
      t.integer :recieving_td
      t.integer :recieving_2Pt_conversions
      t.integer :fumbles_lost
      t.integer :fumble_td
      t.integer :points
      t.integer :week
      t.integer :sacks
      t.integer :interceptions
      t.integer :safeties
      t.integer :fumble_recoveries
      t.integer :blocks
      t.integer :defensive_td
      t.integer :points_against
      t.integer :passing_yards_against
      t.integer :rushing_yards_against
      t.integer :total_yards_against
      t.integer :extra_point_attempts
      t.integer :extra_points_made
      t.integer :field_goal_attempts
      t.integer :field_goals_made
      t.integer :fifty_plus_yard_field_goals
    end
  end
end
