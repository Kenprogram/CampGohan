class Recipe < ApplicationRecord
  has_many :materials
  has_many :how_tos
  accepts_nested_attributes_for :materials
  accepts_nested_attributes_for :how_tos
end
