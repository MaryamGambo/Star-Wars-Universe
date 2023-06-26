class AddUrlToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :url, :string
  end
end
