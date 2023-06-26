class CreateSpecies < ActiveRecord::Migration[7.0]
  def change
    create_table :species do |t|
      t.string :name
      t.string :average_lifespan
      t.string :language
      t.references :planet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
