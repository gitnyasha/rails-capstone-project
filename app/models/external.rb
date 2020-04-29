class External < ApplicationRecord
  belongs_to :user

  def total_ex
    Expense.sum(:amount)
  end
end
