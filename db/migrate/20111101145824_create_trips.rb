class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.string :public_url

      t.timestamps
    end
  end
end
