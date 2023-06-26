class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :diameter
      t.string :population

      t.timestamps
    end
  end
end
