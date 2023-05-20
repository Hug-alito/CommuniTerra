class PlantSitting < ApplicationRecord
  belongs_to :user
  belongs_to :kept_plant
end
