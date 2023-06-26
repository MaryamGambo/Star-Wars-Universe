class AddPlanetToSpecies < ActiveRecord::Migration[7.0]
  def change
    add_reference :species, :planet, foreign_key: true
  end
end
