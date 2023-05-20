class KeptPlant < ApplicationRecord
  belongs_to :user
  belongs_to :owned_plant
  
  has_many :plant_sittings
end
