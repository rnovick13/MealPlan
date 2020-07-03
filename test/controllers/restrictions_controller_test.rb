require 'test_helper'

class RestrictionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restrictions_index_url
    assert_response :success
  end

  test "should get show" do
    get restrictions_show_url
    assert_response :success
  end

end
