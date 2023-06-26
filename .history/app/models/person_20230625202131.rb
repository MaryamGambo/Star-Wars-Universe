class Person < ApplicationRecord
  belongs_to :planet
  belongs_to :species
  has_and_belongs_to_many :films, join_table: :films_people
  has_and_belongs_to_many :starships, join_table: :starships_people
  has_and_belongs_to_many :vehicles, join_table: :vehicles_people
end
