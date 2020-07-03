class MpMealsController < ApplicationController
  def index
    @mpmeals = MpMeal.all
  end

  def new
    @mpmeal = MpMeal.new
  end

  def create
    @mpmeal = MpMeal.create(strong_params)
    @mpmeal.save
  end

  private

  def strong_params
    params.require(:mp_meal).permit(
      :mp_id, :meal_id
    )
  end
end
