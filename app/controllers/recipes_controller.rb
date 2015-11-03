class RecipesController < ApplicationController
	before_action :find_recipe, only: [:show]

	def index
		@recipes = Recipe.all
	end

	def show
		@items = @recipe.items
		@ingredient = @recipe.ingredients
		# @item = Ingredient.find(params[:id])
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
	end

	private

		def recipe_params
			params.require(:recipe).permit(:name, :category, :main_ingredient, 
																		 :origin, :description, :prep_time, :cook_time,
																		 items_attributes: [:amount, :measure])
		end

		def find_recipe
			@recipe = Recipe.find(params[:id])
		end
end
