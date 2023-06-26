class Planet < ApplicationRecord
  has_many :people

  # validation
  validates :name, presence: true
  validates :diameter, presence: true
  validates :population, presence: true
  validates :url, presence: true
end
