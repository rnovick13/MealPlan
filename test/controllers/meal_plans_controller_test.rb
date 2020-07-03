require 'test_helper'

class MealPlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meal_plans_index_url
    assert_response :success
  end

  test "should get show" do
    get meal_plans_show_url
    assert_response :success
  end

end
