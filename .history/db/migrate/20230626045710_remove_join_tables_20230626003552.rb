class RemoveJoinTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :people_films
    drop_table :people_starships
    drop_table :people_vehicles
  end
end
