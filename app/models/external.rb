class External < ApplicationRecord
  belongs_to :user

  validates :name, :amount, presence: true

  def total_ex
    External.sum(:amount)
  end
end
