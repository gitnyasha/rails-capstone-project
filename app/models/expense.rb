class Expense < ApplicationRecord
  belongs_to :user
  has_many :groups
end
