class IngredientsController < ApplicationController

	def index
		@ingredients = Ingredients.all
	end

	def show
		@ingredients = Ingredient.find(params[:id])
	end

	def new
		@ingredient = Ingredient.new
	end

	def edit
		@ingredients = Ingredient.find(params[:id])
	end

	def create
		@ingredient = @recipe.ingredients.new(params[:ingredient])
	end

	def update
	end

	def destroy
	end

	private

		def ingredient_params
			params.require(:ingredient).permit(:name, items_attributes: :amount, :measure)
		end

end
