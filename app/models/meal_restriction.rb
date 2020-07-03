class MealRestriction < ApplicationRecord
  belongs_to :meal
  belongs_to :restriction
  # accepts_nested_attributes_for :meals, :restrictions
end
