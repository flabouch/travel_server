class AddTransportationsIdToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :transportation_arrival_id, :integer
    add_column :destinations, :transportation_departure_id, :integer
  end
end
