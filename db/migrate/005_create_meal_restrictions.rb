class CreateMealRestrictions < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_restrictions do |t|
      t.integer :meal_id
      t.integer :restriction_id

      t.timestamps
    end
  end
end
