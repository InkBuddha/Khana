class IngredientsController < ApplicationController
	before_action :get_ingredient, only: [:show, :edit, :update, :destroy]

	def index
		@ingredients = Ingredients.all
	end

	def show
	end

	def new
		@ingredient = Ingredient.new
	end

	def edit
	end

	def create
		@recipe = Post.find(params[:recipe_id])
		@ingredient = @recipe.ingredients.create(ingredient_params)

		redirect_to recipe_path(@recipe)
	end

	def update
	end

	def destroy
	end

	private

		def ingredient_params
			params.require(:ingredient).permit(:name)
		end

		def get_ingredient
			@ingredient.find(params[:id])
		end

end
