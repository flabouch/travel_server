class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.date :arrival
      t.date :departure
      t.integer :trip_id
      t.timestamps
    end
  end
end
