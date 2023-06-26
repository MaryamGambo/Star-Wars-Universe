class AddUrlToSpecies < ActiveRecord::Migration[7.0]
  def change
    add_column :species, :url, :string
  end
end
