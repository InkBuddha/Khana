class ItemsController < ApplicationController

	def index
		@recipes = Recipe.all
		@ingredients = Ingredient.all
		@items = Item.all
	end

	private

	def item_params
		params.require(:items).permit(:amount, :measure, ingredient_attribute: [:name,
																										 :category])
	end
end
