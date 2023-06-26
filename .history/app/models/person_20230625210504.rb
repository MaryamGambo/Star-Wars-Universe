class Person < ApplicationRecord
  belongs_to :planet
  belongs_to :species
  has_and_belongs_to_many :films, join_table: :films_people
  has_and_belongs_to_many :starships, join_table: :starships_people
  has_and_belongs_to_many :vehicles, join_table: :vehicles_people

  # validations
  validates :name, presence: true
  validates :height, numericality: { greater_than: 0 }, presence: true
  validates :mass, numericality: { greater_than: 0 }, presence: true
  validates :hair_color, allow_blank: true
  validates :skin_color, allow_blank: true
  validates :eye_color, allow_blank: true
  validates :birth_year, allow_blank: true
  validates :gender, allow_blank: true
end
