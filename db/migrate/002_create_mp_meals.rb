class CreateMpMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :mp_meals do |t|
      t.integer :mp_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
