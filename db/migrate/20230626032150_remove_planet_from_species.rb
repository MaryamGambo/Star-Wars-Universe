class RemovePlanetFromSpecies < ActiveRecord::Migration[7.0]
  def change
    remove_reference :species, :planet, null: false, foreign_key: true
  end
end
