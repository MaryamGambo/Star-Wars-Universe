class AddUrlToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :url, :string
  end
end
