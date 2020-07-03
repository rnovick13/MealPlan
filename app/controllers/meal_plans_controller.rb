class MealPlansController < ApplicationController
  def index
    @mealplans = MealPlan.all
  end

  def show
    @mealplan = MealPlan.find(params[:id])
  end

  def new
    @mealplan = MealPlan.new
  end

  def create
    @mealplan = MealPlan.create(strong_params)
    @mealplan.save
    redirect_to meal_plan_path(@mealplan)
  end

  private

  def strong_params
    params.require(:meal_plan).permit(
      :name,
      :meal_id
    )
  end
end
