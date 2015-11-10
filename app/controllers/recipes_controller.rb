class RecipesController < ApplicationController
	before_action :get_recipe, only: [:show, :edit, :update, :destroy]

	def index
		@recipes = Recipe.paginate(page: params[:page])
	end

	def show
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.create(recipe_params)
		if @recipe.save
			flash[:success] = "Successfully created recipe"
			redirect_to @recipe
		else
			flash[:error] = "Failed to create recipe"
			render 'new'
		end
	end

	def destroy
		@recipe.destroy
		redirect_to recipes_url
	end

	private

		def recipe_params
			params.require(:recipe).permit(
						:title, :description,
						items_attributes: [:recipe_id, :ingredient_id, :id, :amount, :measure, :_destroy, 
						ingredients_attributes: [:id, :_destroy, :name]
						])
		end

		#Before filters

		def get_recipe
			@recipe = Recipe.includes(:ingredients).find(params[:id])
		end
end
