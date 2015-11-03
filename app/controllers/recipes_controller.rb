class RecipesController < ApplicationController
	# before_action :find_recipe, only: [:show]

	def index
		@recipes = Recipe.all
	end

	def show
		@recipe = Recipe.find(params[:id])
		@ingredient = @recipe.ingredients
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			flash[:success] = "Successfully created recipe"
			redirect_to 'index'
		else
			flash[:error] = "Failed to create recipe"
			render 'new'
		end
	end

	private

		def recipe_params
			params.require(:recipe).permit(:name, :category, :main_ingredient, 
																		 :origin, :description, :prep_time, :cook_time,
																		 ingredient_attributes: [:name, 
																		 item_attributes:[:amount, :measure]])
		end

		# def find_recipe
		# 	@recipe = Recipe.find(params[:id])
		# end
end
