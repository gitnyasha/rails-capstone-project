require "test_helper"

class ExpenseTest < ActiveSupport::TestCase
  def setup
    @expense = Expense.new(name: "Lorem ipsum", amount: " ")
  end

  test "name should be present" do
    @expense.name = "   "
    assert_not @expense.valid?
  end

  test "ammount should be present" do
    @expense.amount = "   "
    assert_not @expense.valid?
  end
end
