class Person < ApplicationRecord
  belongs_to :planet
  belongs_to :species

  # validations
  validates :name, presence: true
  validates :height, numericality: { greater_than: 0 }, presence: true
  validates :mass, numericality: { greater_than: 0 }, presence: true
  validates :url, presence: true

end
