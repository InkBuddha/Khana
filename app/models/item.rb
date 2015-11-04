class Item < ActiveRecord::Base
  belongs_to :recipe, polymorphic: true
  belongs_to :ingredient, polymorphic: true
  
  accepts_nested_attributes_for :ingredient

  VALID_MEASURES = %w[g kg oz cup tbsp]
  validates :measure, :inclusion => VALID_MEASURES
end
