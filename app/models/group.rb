class Group < ApplicationRecord
  belongs_to :user
  has_many :expenses
  mount_uploader :icon, IconUploader
end
