class Species < ApplicationRecord
  belongs_to :planet
  has_many :people

  # validations
  validates :name, presence: true
  validates :average_lifespan, presence: true
  validates :language, presence: true
  validates :planet_id, presence: true
end
