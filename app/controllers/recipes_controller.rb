class RecipesController < ApplicationController
	# before_action :find_recipe, only: [:show]

	def index
		@recipes = Recipe.all
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def new
		@recipe = Recipe.new
		# @recipe.ingredients.build
		# @recipe.items.build
	end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			flash[:success] = "Successfully created recipe"
			redirect_to @recipe
		else
			flash[:error] = "Failed to create recipe"
			render 'new'
		end
	end

	private

		def recipe_params
			# Pas bon
			params.require(:recipe).permit(:title, :description,
										items_attributes: [:amount, :measure, {ingredients_attributes: :name }] )
		end


		# ============
		# === HELP ===
		# ============
		#
		# recipe: {
		# 	title: "Fajitas",
		# 	description: "Mexican sandwich",
		# 	items_attributes: [{
		# 		amout: 250,
		# 		measure: "g"
		# 		ingredients_attributes: [{
		# 			name: "chicken"
		# 		}]
		# 	}]
		# }
end
