require "test_helper"

class GroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @group = Group.new(name: "Lorem ipsum", icon: " ")
  end

  test "name should be present" do
    @group.name = "   "
    assert_not @group.valid?
  end

  test "ammount should be present" do
    @group.icon = "   "
    assert_not @group.valid?
  end
end
