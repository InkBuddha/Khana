class ItemsController < ApplicationController
	# before_action :get_recipe

	# def index
	# end

	# def show
	# 	@item = Item.find(params[:id])
	# end

	# def new
	# 	@item = Item.new
	# end

	# def edit
	# 	@item = Item.find(params[:id])
	# end

	# def create
	# 	@recipe = Recipe.find(params[:recipe_id])
	# 	# @ingredient = Ingredient.find(params[:ingredient_id])
	# 	@item = @recipe.item.ingredient.create(item_params)
	# 	@item.save
	# end

	# def update
	# 	@item = Item.find(params[:id])
	# 	if @item.update_attributes(params[:item])
	# 		flash[:success] = "Ingredient successfully updated"
	# 	else
	# 		flash[:error] = "Failed to update ingredient to the recipe"
	# 		render 'edit'
	# 	end
	# end

	# def destroy
	# 	@item = Item.find(params[:id])
	# 	@item.destroy
	# 	redirect_to recipe_url
	# end

	# private

	# 	def item_params
	# 		params.require(:item).permit(:amount, :measure, :ingredient,
	# 																	ingredients_attributes: :name)
	# 	end

	# 	#Before filters

	# 	def get_recipe
	# 		@recipes = Recipe.find(params[:recipe_id])
	# 	end
end
