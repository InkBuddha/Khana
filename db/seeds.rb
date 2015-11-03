User.create!(name: "Example User",
						 email: "example@example.com",
						 password: "foobar",
						 password_confirmation: "foobar", 
						 admin: true,
						 activated: true,
						 activated_at: Time.zone.now)



 # Liste des ingrédients
i1 = Ingredient.create(name: "Pomme de terre", category: "Legume")
i2 = Ingredient.create(name: "Graine de cumin", category: "Epices")
i3 = Ingredient.create(name: "Echalotte", category: "Condiments")
i4 = Ingredient.create(name: "Piment de cayenne", category: "Epice")
i5 = Ingredient.create(name: "Coriandre", category: "Herbes aromatique")
i6 = Ingredient.create(name: "Sel", category: "Condiments")
i7 = Ingredient.create(name: "Poivre", category: "Condiments")
i8 = Ingredient.create(name: "Huile d'olive", category: "Huiles")
i9 = Ingredient.create(name: "Oeuf", category: "Produits animaux")
i10 = Ingredient.create(name: "Farine blanche", category: "Farines")
i11 = Ingredient.create(name: "Sucre", category: "Edulcorants")
i12 = Ingredient.create(name: "Levure de boulanger", category: "Levures")
i13 = Ingredient.create(name: "Ail", category: "Condiments")
i14 = Ingredient.create(name: "Gingembre", category: "Epices")
i15 = Ingredient.create(name: "Pâte de curry", category: "Epices")
i16 = Ingredient.create(name: "Huile de coco", category: "Huiles")
i17 = Ingredient.create(name: "Lait de coco", category: "Lait végétal")
i18 = Ingredient.create(name: "Bouillon de poule", category: "Assaisonnement")
i19 = Ingredient.create(name: "Nouilles de riz", category: "Pâtes et riz")


 # Liste des recettes
r1 = Recipe.create(name: "Galettes de pommes de terre à la pakistanaise", category: "Accompagnement",
									 origin: "Pakistan", main_ingredient: "Pomme de terre", prep_time: "45 min",
									 cook_time: "10 min",
									 description: "Faire cuire les pommes de terres à l'eau et les écraser. 
									 Ajouter: les graines de cumin, les échalottes, le piment de cayenne, 
									 la coriandre, le sel et le poivre. Mélanger le tout. Former les galettes dans
									 la paume de la main et les badigeonner d'oeuf battu, faire chauffer de l'huile
									 d'olive dans une poele et les faire dorer quelques minutes de chaques côtés.")
r2 = Recipe.create(name: "Pâte à pizza", category: "Pâte et pain",
									 origin: "Italie", main_ingredient: "Farine", prep_time: "10 min",
									 cook_time: "30 min",
									 description: "Diluer le sachet de levure dans un verre d'eau tiède (pas chaud,
									 	pas froid, TIEDE. Mélanger la farine, le sucre, le sel et l'huile. Ajouter 
									 	la levure. Pétrir la pâte une dizaine de minutes. Laisser lever la pâte dans
									 	un endroit sec et tiède pendant 1h")
r3 = Recipe.create(name: "Soupe de nouilles thai", category: "Plat principal",
									 origin: "Thailande", main_ingredient: "Nouilles de riz", prep_time: "5 min",
									 cook_time: "15 min",
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

 # Associe ingrédients aux recettes
# r1.ingredients << [i1, i2, i3, i4, i5, i6, i7, i8, i9]
# r2.ingredients << [i10, i8, i11, i12, i6]
# r3.ingredients << [i13, i14, i15, i16, i17, i18, i19, i5]
