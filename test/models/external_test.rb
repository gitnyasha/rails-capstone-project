require "test_helper"

class ExternalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @external = External.new(name: "Lorem ipsum", amount: " ")
  end

  test "name should be present" do
    @external.name = "   "
    assert_not @external.valid?
  end

  test "ammount should be present" do
    @external.amount = "   "
    assert_not @external.valid?
  end
end
