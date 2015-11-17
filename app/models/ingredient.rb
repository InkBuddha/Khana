class Ingredient < ActiveRecord::Base
	has_many :items
	has_many :recipes, through: :items

	accepts_nested_attributes_for :items,
																reject_if: :all_blank,
																allow_destroy: true
	validates :name, presence: true

		# === Schema Info
	 #  t.string   "name"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
end
