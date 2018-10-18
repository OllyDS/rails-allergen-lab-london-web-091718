i1 = Ingredient.create(name:"Hand Sanitizer")
i2 = Ingredient.create(name:"FlatIron Student Tears")
i3 = Ingredient.create(name:"Cabbage")
i4 = Ingredient.create(name:"Big Nuts")
i5 = Ingredient.create(name:"Console War Args")

u1 = User.create(name:"Ronald MacDonald")
u2 = User.create(name:"Mick Jagger")
u3 = User.create(name:"Dan the Man")
u4 = User.create(name:"Dan the woMan")

r1 = Recipe.create(name:"Smelly Socks", user_id: u1.id)
r2 = Recipe.create(name:"Tearful Regret", user_id: u2.id)
r3 = Recipe.create(name:"Scalloped Memories", user_id: u3.id)
r4 = Recipe.create(name:"Console Nuts", user_id: u4.id)

ri1 = RecipeIngredient.create(ingredient_id: i1.id,recipe_id: r1.id)
ri2 = RecipeIngredient.create(ingredient_id:i2.id, recipe_id: r2.id)
ri3 = RecipeIngredient.create(ingredient_id:i3.id, recipe_id: r4.id)
ri4 = RecipeIngredient.create(ingredient_id:i4.id, recipe_id: r3.id)
ri5 = RecipeIngredient.create(ingredient_id:i1.id, recipe_id: r2.id)
ri6 = RecipeIngredient.create(ingredient_id:i1.id, recipe_id: r3.id)
ri7 = RecipeIngredient.create(ingredient_id:i1.id, recipe_id: r4.id)
ri8 = RecipeIngredient.create(ingredient_id:i5.id, recipe_id: r2.id)
ri9 = RecipeIngredient.create(ingredient_id:i2.id, recipe_id: r2.id)
ri10 = RecipeIngredient.create(ingredient_id:i3.id, recipe_id: r2.id)
ri11 = RecipeIngredient.create(ingredient_id:i4.id, recipe_id: r2.id)
ri12 = RecipeIngredient.create(ingredient_id:i4.id, recipe_id: r4.id)
ri13 = RecipeIngredient.create(ingredient_id:i5.id, recipe_id: r4.id)