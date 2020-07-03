class MealPlan < ApplicationRecord
  has_many :mp_meals
  has_many :meals, through: :mp_meals
  accepts_nested_attributes_for :meals, :mp_meals
end
