class Item < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
  
  accepts_nested_attributes_for :ingredient

  VALID_MEASURES = %w[g kg oz cup tbsp]
  validates :measure, :inclusion => VALID_MEASURES
end
