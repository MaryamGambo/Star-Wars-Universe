class CreateJoinTables < ActiveRecord::Migration[7.0]
  def change
    create_join_table :people, :starships do |t|
      t.index [:person_id, :starship_id]
      t.index [:starship_id, :person_id]
    end

    create_join_table :people, :vehicles do |t|
      t.index [:person_id, :vehicle_id]
      t.index [:vehicle_id, :person_id]
    end

    create_join_table :people, :films do |t|
      t.index [:person_id, :film_id]
      t.index [:film_id, :person_id]
    end
  end
end
