class Group < ApplicationRecord
  belongs_to :user
  has_many :expenses, dependent: :destroy
  mount_uploader :icon, IconUploader
end
