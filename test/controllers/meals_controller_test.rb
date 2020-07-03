require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meals_index_url
    assert_response :success
  end

  test "should get show" do
    get meals_show_url
    assert_response :success
  end

end
