# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#meal_plans
    #TEMPLATE
# create_table "meal_plans", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
mp1 = MealPlan.create(name: "healthy")
mp2 = MealPlan.create(name: "pizza everyday")
mp3 = MealPlan.create(name: "herbivore")
mp4 = MealPlan.create(name: "carnivore")
mp5 = MealPlan.create(name: "two weeks to live")
mp6 = MealPlan.create(name: "cheeseburgers")
mp7 = MealPlan.create(name: "veggies")

#meals
pizza = Meal.create(name: "pizza")
dumpling = Meal.create(name: "dumplings")
taco1 = Meal.create(name: "chicken taco")
taco2 = Meal.create(name: "beef taco")
hotdog = Meal.create(name: "hotdog")
cheeseburger = Meal.create(name: "cheeseburger")
hamburger = Meal.create(name: "hamburger")
salad = Meal.create(name: "salad")

#restrictions
dairy = Restriction.create(name: "dairy", description: "Dairy-free diets do not include any dairy products, including milk or cheese.")
gluten = Restriction.create(name: "gluten", description: "Gluten-free diets do not include anything made with wheat, barley, rye, and oats.")
nut = Restriction.create(name: "tree nuts", description: "Nut-free diets do not include any peanuts or tree nuts, including almonds and pecans.")
kosher = Restriction.create(name: "kosher", description: "Kosher diets are extremely strict, including how the animals are prepared. Shellfish and crustaceans are not on the list and no dish can contain both meat and dairy. Meat and dairy must also not be prepared using the same pans, dishes, or utensils.")
halal = Restriction.create(name: "Halal", description: "Halal diets are extremely strict, including how the animals are prepared. Food items not included in a halal diet include pigs, carnivorous animals, animal products not supplied by a halal slaughtered animal, and alchohol.")
vegetarian = Restriction.create(name: "vegetarian", description: "Vegetarian diets are not as strict as vegan, though they also do not include any animal products, and may include food derived from animals.")
vegan = Restriction.create(name: "vegan", description: "Vegan diets do not include any animal products or food derived from animals, such as eggs, dairy, and honey.")

#meal_restrictions

mr1 = MealRestriction.create(meal_id: 1, restriction_id: 3)
mr2 = MealRestriction.create(meal_id: 8, restriction_id: 6)
mr3 = MealRestriction.create(meal_id: 8, restriction_id: 7)
mr4 = MealRestriction.create(meal_id: 8, restriction_id: 1)
mr5 = MealRestriction.create(meal_id: 8, restriction_id: 2)
mr6 = MealRestriction.create(meal_id: 8, restriction_id: 3)
mr7 = MealRestriction.create(meal_id: 5, restriction_id: 3)
mr8 = MealRestriction.create(meal_id: 6, restriction_id: 3)
mr9 = MealRestriction.create(meal_id: 7, restriction_id: 3)
mr9 = MealRestriction.create(meal_id: 7, restriction_id: 4)


#mp_meals
mpM1 = MpMeal.create(mp_id: 1, meal_id: 8)
mpM2 = MpMeal.create(mp_id: 2, meal_id: 1)
mpM3 = MpMeal.create(mp_id: 2, meal_id: 1)
mpM4 = MpMeal.create(mp_id: 3, meal_id: 8)
mpM5 = MpMeal.create(mp_id: 4, meal_id: 5)
mpM6 = MpMeal.create(mp_id: 5, meal_id: 2)
mpM7 = MpMeal.create(mp_id: 6, meal_id: 6)
