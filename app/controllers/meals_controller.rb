class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.create(name: strong_params[:name])
    rest_arr = strong_params[:id].reject! {|e| e.empty?}
    @meal.assign_restrictions(@meal.id, rest_arr)
    @meal.save
    redirect_to meal_path(@meal)
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update(name: params[:meal][:name])
    rest_arr = strong_params[:id].reject! {|e| e.empty?}
    @meal.assign_restrictions(@meal.id, rest_arr)
    redirect_to meal_path(@meal)
  end

  private

  def strong_params
    params.require(:meal).permit(
      :name, id: []
    )
  end
end
