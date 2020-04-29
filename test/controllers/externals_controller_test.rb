require 'test_helper'

class ExternalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @external = externals(:one)
  end

  test "should get index" do
    get externals_url
    assert_response :success
  end

  test "should get new" do
    get new_external_url
    assert_response :success
  end

  test "should create external" do
    assert_difference('External.count') do
      post externals_url, params: { external: { amount: @external.amount, name: @external.name } }
    end

    assert_redirected_to external_url(External.last)
  end

  test "should show external" do
    get external_url(@external)
    assert_response :success
  end

  test "should get edit" do
    get edit_external_url(@external)
    assert_response :success
  end

  test "should update external" do
    patch external_url(@external), params: { external: { amount: @external.amount, name: @external.name } }
    assert_redirected_to external_url(@external)
  end

  test "should destroy external" do
    assert_difference('External.count', -1) do
      delete external_url(@external)
    end

    assert_redirected_to externals_url
  end
end
