class Group < ApplicationRecord
  belongs_to :user
  has_many :expenses, dependent: :destroy
  mount_uploader :icon, IconUploader
  validates :name, :icon, presence: true
end
