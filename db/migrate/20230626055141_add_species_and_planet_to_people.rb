class AddSpeciesAndPlanetToPeople < ActiveRecord::Migration[7.0]
  def change
    add_reference :people, :species, null: false, foreign_key: true
    add_reference :people, :planet, null: false, foreign_key: true
  end
end
