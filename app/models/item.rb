class Item < ActiveRecord::Base
  belongs_to :recipe, foreign_key: :recipe_id
  belongs_to :ingredient, foreign_key: :ingredient_id
  
  accepts_nested_attributes_for :ingredients

  VALID_MEASURES = %w[g kg oz cup tbsp]
  validates :measure, :inclusion => VALID_MEASURES

    # === Schema Info
    # t.integer  "recipe_id"
    # t.integer  "ingredient_id"
    # t.decimal  "amount"
    # t.string   "measure"
    # t.datetime "created_at",    null: false
    # t.datetime "updated_at",    null: false
end
