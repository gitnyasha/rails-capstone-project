class User < ApplicationRecord
  has_many :groups
  has_many :expenses
  has_many :externals

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
end
