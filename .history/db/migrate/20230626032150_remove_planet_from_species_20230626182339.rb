class RemovePlanetFromSpecies < ActiveRecord::Migration[7.0]
  def change
    remove_column :species, :planet, :string
  end
end
