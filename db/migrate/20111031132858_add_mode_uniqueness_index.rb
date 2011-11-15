class AddModeUniquenessIndex < ActiveRecord::Migration
  def up
    add_index :transportation :mode, :unique => true
  end

  def down
    remove_index :transportations, :mode
  end
end
