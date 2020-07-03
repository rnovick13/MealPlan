require 'test_helper'

class MpMealsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mp_meals_index_url
    assert_response :success
  end

end
