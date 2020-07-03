class Restriction < ApplicationRecord
  has_many :mealrestrictions
  has_many :meals, through: :mealrestrictions
end
