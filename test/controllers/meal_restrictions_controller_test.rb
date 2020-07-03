require 'test_helper'

class MealRestrictionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meal_restrictions_index_url
    assert_response :success
  end

end
