class Allotment < ApplicationRecord
  has_many :members, through: :allotment_users, source: :user
  # belongs_to :admin, class_name: "User", foreign_key: :admin_id
end
