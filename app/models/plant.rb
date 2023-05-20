class Plant < ApplicationRecord
  has_many :allotments, through: :ownedplants
  has_many :owned_plants
  has_many :owners, through: :owned_plants, source: :user
  has_many :plant_sittings
  has_many :plants_to_keep
end
