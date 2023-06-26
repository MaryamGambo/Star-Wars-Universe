class AddUrlToStarships < ActiveRecord::Migration[7.0]
  def change
    add_column :starships, :url, :string
  end
end
