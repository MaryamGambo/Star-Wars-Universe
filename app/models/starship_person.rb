class StarshipPerson < ApplicationRecord
  belongs_to :starship
  belongs_to :person
end
