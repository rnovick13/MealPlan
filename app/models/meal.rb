class Meal < ApplicationRecord
  has_many :mpmeals
  has_many :mealrestrictions
  has_many :mealplans, through: :mpmeals
  has_many :restrictions, through: :mealrestrictions
  accepts_nested_attributes_for :restrictions, :mealrestrictions

  def assign_restrictions(meal_id, rest_arr)
   rest_arr.each do |rest|
     id = rest.to_i
     MealRestriction.create(meal_id: meal_id, restriction_id: id)
   end
 end
end
