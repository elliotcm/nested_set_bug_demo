class AddNestedSetToThing < ActiveRecord::Migration
  def self.up
    add_column :things, :parent_id, :integer
    add_column :things, :lft, :integer
    add_column :things, :rgt, :integer
  end

  def self.down
    remove_column :things, :rgt
    remove_column :things, :lft
    remove_column :things, :parent_id
  end
end
