class AddUrlToFilms < ActiveRecord::Migration[7.0]
  def change
    add_column :films, :url, :string
  end
end
