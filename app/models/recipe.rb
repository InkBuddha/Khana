class Recipe < ActiveRecord::Base
	has_many :items
	has_many :ingredients, through: :items

	# # this allows things like @recipes = Recipe.using("cucumber")
 #  scope :using, lambda do |text| 
 #    joins(:ingredients).where("ingredients.name LIKE ?", "%#{text}%")
 #  end
end
