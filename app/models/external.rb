class External < ApplicationRecord
  belongs_to :user

  def total_ex
    External.sum(:amount)
  end
end
