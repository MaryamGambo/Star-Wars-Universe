class AddUrlToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :url, :string
  end
end
