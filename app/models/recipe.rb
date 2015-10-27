class Recipe < ActiveRecord::Base
	has_many :bowls
	has_many :ingredients, through: :bowls
end
