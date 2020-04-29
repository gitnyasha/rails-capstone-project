class User < ApplicationRecord
  has_many :groups
  has_many :expenses
  has_many :externals
end
