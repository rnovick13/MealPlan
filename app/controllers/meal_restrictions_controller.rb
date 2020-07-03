class MealRestrictionsController < ApplicationController
  def index
    @mealrestrictions = MealRestriction.all
  end

  def new
    @mealrestriction = MealRestriction.new
  end

  def create
    @mealrestriction = MealRestriction.create(:meal_id, :restriction_id)
    @mealrestriction.save
  end

 #  def assign_restrictions(meal_id, rest_arr)
 #   rest_arr.each do |rest|
 #     id = rest.to_i
 #     # byebug
 #     MealRestriction.create
 #   end
 # end

  # private
  #
  # def strong_params
  #   params.require(:mealrestriction).permit(
  #     :meal_id,
  #     :restriction_id
  #   )
  # end
end
