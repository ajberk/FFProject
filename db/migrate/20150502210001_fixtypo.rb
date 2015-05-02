class Fixtypo < ActiveRecord::Migration
  def change
    remove_column :positions, :tnterceptions
  end
end
