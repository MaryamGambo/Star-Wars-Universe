class Person < ApplicationRecord
  belongs_to :planet
  belongs_to :species
  has_and_belongs_to_many :films, join_table: :film_people
  has_and_belongs_to_many :starships, join_table: :starship_people
  has_and_belongs_to_many :vehicles, join_table: :vehicle_people

  # validations
  validates :name, presence: true
  validates :height, numericality: { greater_than: 0 }, presence: true
  validates :mass, numericality: { greater_than: 0 }, presence: true
  validates :url, presence: true

end
