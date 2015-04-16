class CreateKickers < ActiveRecord::Migration
  def change
    create_table :kickers do |t|
      t.string  :Player, null: false
      t.string  :Team, null: false
      t.string  :Opponent, null: false
      t.integer :Extra_Point_Attempts, null: false
      t.integer :Extra_Points_Made, null: false
      t.integer :Field_Goal_Attempts, null: false
      t.integer :Field_Goals_Made, null: false
      t.integer :Fifty_Plus_Yard_Field_Goals, null: false
      t.integer :Points, null: false
      t.integer :Week, null: false
    end
    add_index :kickers, :Team
    add_index :kickers, :Opponent
    add_index :kickers, :Points
  end
end
