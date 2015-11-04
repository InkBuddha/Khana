class Recipe < ActiveRecord::Base
	has_many :items
	has_many :ingredients, through: :items

	accepts_nested_attributes_for :items
	accepts_nested_attributes_for :ingredients

	  # === Schema Info
   #  t.string   "title"
   #  t.text     "description"
   #  t.datetime "created_at",  null: false
   #  t.datetime "updated_at",  null: false
end
