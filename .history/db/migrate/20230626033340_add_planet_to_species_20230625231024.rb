class AddPlanetToSpecies < ActiveRecord::Migration[7.0]
  def change
    add_column :species, :planet, :string
  end
end
