class Item < ActiveRecord::Base
  belongs_to :recipe, foreign_key: :recipe_id
  belongs_to :ingredient, foreign_key: :ingredient_id
  
  accepts_nested_attributes_for :ingredient,
                                reject_if: :all_blank
  accepts_nested_attributes_for :recipe

  VALID_MEASURES = %w(pc L cl g kg oz cup tbsp)
  validates :amount, presence: true
  validates :measure, presence: true, inclusion: VALID_MEASURES

    # === Schema Info
    # t.integer  "recipe_id"
    # t.integer  "ingredient_id"
    # t.decimal  "amount"
    # t.string   "measure"
    # t.datetime "created_at",    null: false
    # t.datetime "updated_at",    null: false
end
