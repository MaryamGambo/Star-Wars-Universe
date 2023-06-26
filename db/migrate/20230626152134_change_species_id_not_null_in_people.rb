class ChangeSpeciesIdNotNullInPeople < ActiveRecord::Migration[7.0]
  def change
    change_column_null :people, :species_id, false
  end
end
