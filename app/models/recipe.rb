class Recipe < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order(created_at: :desc) }
	has_many :items, dependent: :destroy
	has_many :ingredients, through: :items
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: ":style/missing_recipe.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

	accepts_nested_attributes_for :items,
																reject_if: :all_blank,
																allow_destroy: true
	accepts_nested_attributes_for :ingredients,
																reject_if: :all_blank,
																allow_destroy: true

	validates :user_id, presence: true
	validates :title, presence: true
	validates :description, presence: true
end
