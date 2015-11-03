class Item < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
  attr_accessor :amount, :measure

  VALID_MEASURES = %w[g kg oz cup tbsp]
  validates :measure, :inclusion => VALID_MEASURES
end
