user1 = User.create!(name: "Example User",
						 email: "example@example.com",
						 password: "foobar",
						 password_confirmation: "foobar",
						 admin: true,
						 activated: true,
						 activated_at: Time.zone.now)



 # Liste des ingrédients
i1  = Ingredient.create(name: "Pomme de terre")
i2  = Ingredient.create(name: "Graine de cumin")
i3  = Ingredient.create(name: "Echalotte")
i4  = Ingredient.create(name: "Piment de cayenne")
i5  = Ingredient.create(name: "Coriandre")
i6  = Ingredient.create(name: "Sel")
i7  = Ingredient.create(name: "Poivre")
i8  = Ingredient.create(name: "Huile d'olive")
i9  = Ingredient.create(name: "Oeuf")
i10 = Ingredient.create(name: "Farine blanche")
i11 = Ingredient.create(name: "Sucre")
i12 = Ingredient.create(name: "Levure de boulanger")
i13 = Ingredient.create(name: "Ail")
i14 = Ingredient.create(name: "Gingembre")
i15 = Ingredient.create(name: "Pâte de curry")
i16 = Ingredient.create(name: "Huile de coco")
i17 = Ingredient.create(name: "Lait de coco")
i18 = Ingredient.create(name: "Bouillon de poule")
i19 = Ingredient.create(name: "Nouilles de riz")


 # Liste des recettes
r1 = Recipe.create(title: "Galettes de pommes de terre", 
									 description: "Faire cuire les pommes de terres à l'eau et les écraser. 
									 Ajouter: les graines de cumin, les échalottes, le piment de cayenne, 
									 la coriandre, le sel et le poivre. Mélanger le tout. Former les galettes dans
									 la paume de la main et les badigeonner d'oeuf battu, faire chauffer de l'huile
									 d'olive dans une poele et les faire dorer quelques minutes de chaques côtés.")
r2 = Recipe.create(title: "Pâte à pizza", 
									 description: "Diluer le sachet de levure dans un verre d'eau tiède (pas chaud,
									 	pas froid, TIEDE. Mélanger la farine, le sucre, le sel et l'huile. Ajouter 
									 	la levure. Pétrir la pâte une dizaine de minutes. Laisser lever la pâte dans
									 	un endroit sec et tiède pendant 1h")
r3 = Recipe.create(title: "Soupe de nouilles thai",
									 description: "Mélanger l'ail, le gingembre et la pâte de curry dans un bol.
									 Ajouter l'huile de coco et mélanger. Dans une casserole, chauffer le mélanger
									 pate de curry/coco 1 ou 2 minutes. Ajouter le bouillon de poule et déglasser
									 la préparation. Ajouter le lait de coco et faire bouillir la préparation.
									 Assaisonner suivant le gout. Mettre les nouilles dans un bol et y verser le 
									 bouilon. Attendre quelques minutes que les nouilles cuisent. Garnir la soupe
									 suivant les préférences (piments, légumes, herbes fraiches, croutons, ...")

#items
item1 = Item.create(recipe_id: 1, ingredient_id: 1, amount: 1, measure: "kg")
item2 = Item.create(recipe_id: 1, ingredient_id: 2, amount: 2, measure: "g")
item3 = Item.create(recipe_id: 1, ingredient_id: 3, amount: 5, measure: "g")
item4 = Item.create(recipe_id: 1, ingredient_id: 4, amount: 2, measure: "g")
item5 = Item.create(recipe_id: 1, ingredient_id: 5, amount: 5, measure: "g")
item6 = Item.create(recipe_id: 1, ingredient_id: 6, amount: 5, measure: "g")
item7 = Item.create(recipe_id: 1, ingredient_id: 7, amount: 5, measure: "g")
item8 = Item.create(recipe_id: 1, ingredient_id: 8, amount: 5, measure: "g")
item9 = Item.create(recipe_id: 1, ingredient_id: 9, amount: 5, measure: "g")

item10 = Item.create(recipe_id: 2, ingredient_id: 10, amount: 1, measure: "kg")
item11 = Item.create(recipe_id: 2, ingredient_id: 8, amount: 2, measure: "g")
item12 = Item.create(recipe_id: 2, ingredient_id: 11, amount: 5, measure: "g")
item13 = Item.create(recipe_id: 2, ingredient_id: 12, amount: 2, measure: "g")
item14 = Item.create(recipe_id: 2, ingredient_id: 6, amount: 5, measure: "g")

item15 = Item.create(recipe_id: 3, ingredient_id: 13, amount: 5, measure: "g")
item16 = Item.create(recipe_id: 3, ingredient_id: 14, amount: 5, measure: "g")
item17 = Item.create(recipe_id: 3, ingredient_id: 15, amount: 5, measure: "g")
item18 = Item.create(recipe_id: 3, ingredient_id: 16, amount: 5, measure: "g")
item19 = Item.create(recipe_id: 3, ingredient_id: 17, amount: 5, measure: "g")
item20 = Item.create(recipe_id: 3, ingredient_id: 18, amount: 5, measure: "g")
item21 = Item.create(recipe_id: 3, ingredient_id: 19, amount: 5, measure: "g")
item22 = Item.create(recipe_id: 3, ingredient_id: 5, amount: 5, measure: "g")

 # Associe recettes à user1
 [r1, r2, r3] << user1
