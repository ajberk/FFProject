class CreateDefense < ActiveRecord::Migration
  def change
    create_table :defenses do |t|
      t.string  :Team, null: false
      t.string  :Opponent, null: false
      t.integer :Sacks, null: false
      t.integer :Interceptions, null: false
      t.integer :Safeties, null: false
      t.integer :Fumble_Recoveries, null: false
      t.integer :Blocks, null: false
      t.integer :TD, null: false
      t.integer :Points_Against, null: false
      t.integer :Passing_Yards_Against, null: false
      t.integer :Rushing_Yards_Against, null: false
      t.integer :Total_Yards_Against, null: false
      t.integer :Points, null: false
      t.integer :Week, null: false
    end
    add_index :defenses, :Team
    add_index :defenses, :Opponent
    add_index :defenses, :Points
  end
end
