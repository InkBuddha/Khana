class Ingredient < ActiveRecord::Base
	has_many :bowls
	has_many :recipes, through: :bowls
end
