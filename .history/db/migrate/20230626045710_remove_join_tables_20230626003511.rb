class RemoveJoinTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :films_people
    drop_table :people_starships
    drop_table :vehicles_people
  end
end
