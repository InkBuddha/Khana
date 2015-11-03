class Ingredient < ActiveRecord::Base
	belongs_to :items
	has_many :recipes, through: :items	
end
