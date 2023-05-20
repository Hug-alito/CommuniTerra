class OwnedPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  belongs_to :allotment
end
