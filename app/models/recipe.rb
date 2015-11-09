class Recipe < ActiveRecord::Base
	belongs_to :user
	has_many :items, dependent: :destroy
	has_many :ingredients, through: :items
	validates :title, presence: true
	validates :description, presence: true

	accepts_nested_attributes_for :items,
																reject_if: :all_blank,
																allow_destroy: true
	accepts_nested_attributes_for :ingredients

	  # === Schema Info
   #  t.string   "title"
   #  t.text     "description"
   #  t.datetime "created_at",  null: false
   #  t.datetime "updated_at",  null: false
end
