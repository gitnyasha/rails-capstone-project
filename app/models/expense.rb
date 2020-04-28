class Expense < ApplicationRecord
  belongs_to :group
  belongs_to :user

  def total_expense
    Expense.sum(:amount)
  end
end
