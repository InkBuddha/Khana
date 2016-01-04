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

	def edit
	end

	def create
		@recipe = current_user.recipes.build(recipe_params)

			if @recipe.save
				flash[:notice] = "#{@recipe.title} recipe successfully created"
				redirect_to @recipe
			else
				flash[:alert] = "Failed to create recipe"
				render :new
			end
	end

	def update
		@recipe.update_attributes(recipe_params)

			if @recipe.update_attributes(recipe_params)
				flash[:notice] = "Recipe successfully updated"
				redirect_to @recipe
			else
				flash[:alert] = "Oops, something went wrong"
				render :edit
			end
	end

	def delete
		@recipe = Recipe.find(params[:product_id])
	end

	def destroy
		@recipe.destroy
		flash[:notice] = "#{@recipe.title} recipe sucessfully deleted"
		redirect_to recipes_url
	end

	private

		def recipe_params
			params.require(:recipe).permit(
						:title, :description, :photo,
						items_attributes: [:recipe_id, :ingredient_id, :id, :amount, :measure, :_destroy, 
						ingredient_attributes: [:id, :_destroy, :name]
						])
		end

		#Before filters

		def get_recipe
			@recipe = Recipe.find(params[:id])
		end
end
