class ItemsController < ApplicationController
	before_action :get_recipe

	def index
		@recipes = Recipe.all
		@ingredients = Ingredient.all
		@items = Item.all
	end

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end

	def edit
		@item = Item.find(params[:id])
	end

	def create
		@ingredient = Ingredient.find(params[:ingredient_id])
		@item = @ingredient.item.create(item_params)

		if @item.save
			flash[:success] = "Ingredient successfully added to the recipe"
		else
			flash[:error] = "Failed to add this ingredient to the recipe"
			render 'new'
		end
	end

	def update
		@item = Item.find(params[:id])
		if @item.update_attributes(params[:item])
			flash[:success] = "Ingredient successfully updated"
		else
			flash[:error] = "Failed to update ingredient to the recipe"
			render 'edit'
		end
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to recipe_url
	end

	private

		def item_params
			params.require(:item).permit(ingredients_attributes: :name,
																	 :amount, :measure,)
		end

		#Before filters

		def get_recipe
			@recipes = Recipe.find(params[:recipe_id])
		end
end
