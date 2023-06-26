class Person < ApplicationRecord
  belongs_to :planet, optional:true
  belongs_to :species, optional:true
  has_and_belongs_to_many :starships
  has_and_belongs_to_many :films
  has_and_belongs_to_many :vehicles

  # validations
  validates :name, presence:true
  validates :url, presence:true
end
