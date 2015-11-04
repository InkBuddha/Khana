class Ingredient < ActiveRecord::Base
	has_many :items
	has_many :recipes, through: :items	
end
