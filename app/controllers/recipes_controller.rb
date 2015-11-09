class RecipesController < ApplicationController
	before_action :get_recipe, only: [:show, :destroy]

	def index
		@recipes = Recipe.paginate(page: params[:page])
	end

	def show
	end

	def new
		@recipe = Recipe.new
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

	def destroy
		@recipe.destroy
		redirect_to recipes_url
	end

	private

		def recipe_params
			params.require(:recipe).permit(
										:title, :description,
										items_attributes: [:id, :amount, :measure, :_destroy, 
										{ingredients_attributes: [:id, :name] }] )
		end

		# def recipe_params
		# 	params.require(:recipe).permit(
		# 								:title, :description,
		# 								items_attributes: [:id, :amount, :measure, :_destroy, 
		# 								{ingredients_attributes: :name }] )
		# end

		def get_recipe
			@recipe = Recipe.find(params[:id])
		end
end
