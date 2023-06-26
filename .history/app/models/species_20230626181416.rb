class Species < ApplicationRecord
  has_many :people
  belongs_to :planet

  # validations
  validates :name, presence: true
  validates :average_lifespan, presence: true
  validates :language, presence: true
  validates :url, presence: true
end
