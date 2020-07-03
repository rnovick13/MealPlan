class MpMeal < ApplicationRecord
  belongs_to :meal_plan
  belongs_to :meal
  accepts_nested_attributes_for :meal_plan, :meal

end
