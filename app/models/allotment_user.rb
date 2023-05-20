class AllotmentUser < ApplicationRecord
  belongs_to :user
  belongs_to :allotment
end
