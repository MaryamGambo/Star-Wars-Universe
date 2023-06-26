class CreateVehiclePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_people do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
