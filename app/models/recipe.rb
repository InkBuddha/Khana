class Recipe < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order(created_at: :desc) }
	has_many :items, dependent: :destroy
	has_many :ingredients, through: :items

	accepts_nested_attributes_for :items,
																reject_if: :all_blank,
																allow_destroy: true
	accepts_nested_attributes_for :ingredients,
																reject_if: :all_blank,
																allow_destroy: true

	# validates :user_id, presence: true
	validates :title, presence: true
	validates :description, presence: true

	
	  # === Schema Info
   #  t.string   "title"
   #  t.text     "description"
   #  t.datetime "created_at",  null: false
   #  t.datetime "updated_at",  null: false
end
