class CreateTransportations < ActiveRecord::Migration
  def change
    create_table :transportations do |t|
      t.string :mode
      t.timestamps
    end
  end
end
