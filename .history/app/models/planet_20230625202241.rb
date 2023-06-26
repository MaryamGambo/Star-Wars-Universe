class Planet < ApplicationRecord
  has_many :species
  has_many :people
end
