class RecipesController < ApplicationController
	before_action :get_recipe, only: [:show, :edit, :update, :destroy]

	def index
		@recipes = Recipe.paginate(page: params[:page])

		respond_to do |format|
			format.html
			format.js {render @recipes}
		end
	end

	def show
	end

	def new
		@recipe = Recipe.new
	end

	def edit
	end

	def create
		# @recipe = Recipe.create(recipe_params)
		@recipe = current_user.recipes.build(recipe_params)

		respond_to do |format|
			if @recipe.save
				format.html { redirect_to @recipe, notice: "#{@recipe.title} successfully created" }
				format.js {render @recipe}
			else
				format.html { render :new, notice: "Failed to create recipe" }
				format.js { render @event_errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		respond_to do |format|
			if @recipe.update_attributes(recipe_params)
				format.html { redirect_to @recipe, notice: "Recipe successfully updated" }
				format.js {render @recipe}
			else
				format.html {render :edit, notice: "Oops, something went wrong"}
				format.js {render @event_errors, status: :unprecessable_entity }
			end
		end
	end

	def destroy
		@recipe.destroy
		respond_to do |format|
			format.html { redirect_to recipes_url, notice: "#{@recipe.title} recipe sucessfully deleted"}
			format.js
		end
	end

	private

		def recipe_params
			params.require(:recipe).permit(
						:title, :description,
						items_attributes: [:recipe_id, :ingredient_id, :id, :amount, :measure, :_destroy, 
						ingredient_attributes: [:id, :_destroy, :name]
						])
		end

		#Before filters

		def get_recipe
			@recipe = Recipe.find(params[:id])
		end
end
