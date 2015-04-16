class CreateQuarterbacks < ActiveRecord::Migration
  def change
    create_table :quarterbacks do |t|
      t.string  :Player, null: false
      t.string  :Team, null: false
      t.string  :Opponent, null: false
      t.integer :Passing_Attempts, null: false
      t.integer :Passing_Completions, null: false
      t.integer :Passing_Yards, null: false
      t.integer :Passing_TD, null: false
      t.integer :Interceptions, null: false
      t.integer :Passing_2Pt, null: false
      t.integer :Rushing_Attempts, null: false
      t.integer :Rushing_Yards, null: false
      t.integer :Rushing_TD, null: false
      t.integer :Rushing_2Pt_Conversions, null: false
      t.integer :Receptions, null: false
      t.integer :Recieving_Yds, null: false
      t.integer :Recieving_TD, null: false
      t.integer :Recieving_2Pt_Conversions, null: false
      t.integer :Fumbles_Lost, null: false
      t.integer :Fumble_TD, null: false
      t.integer :Points, null: false
      t.integer :Week, null: false
    end
    add_index :quarterbacks, :Team
    add_index :quarterbacks, :Opponent
    add_index :quarterbacks, :Points
  end
end
