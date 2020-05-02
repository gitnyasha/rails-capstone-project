class Expense < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :name, :amount, :group_id, presence: true

  def total_expense
    Expense.sum(:amount)
  end
end
