class AddModeUniquenessIndex < ActiveRecord::Migration
  def up
    add_index :transportations, :mode, :unique => true
  end

  def down
    remove_index :transportations, :mode
  end
end
