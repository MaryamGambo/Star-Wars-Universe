class Species < ApplicationRecord
  belongs_to :planet
  has_many :people
end
