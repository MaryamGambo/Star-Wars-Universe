class CreateStarshipPeople < ActiveRecord::Migration[7.0]
  def change
    create_table :starship_people do |t|
      t.references :starship, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
