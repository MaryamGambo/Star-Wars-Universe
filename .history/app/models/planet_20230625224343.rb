class Planet < ApplicationRecord
  has_many :species
  has_many :people

  # validatio
  validates :name, presence: true
  validates :diameter, presence: true
  validates :population, presence: true
end
