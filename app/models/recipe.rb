class Recipe < ApplicationRecord
  has_many :materials
  has_many :how_tos
  has_many :recipe_category_relations
  has_many :categories, through: :recipe_category_relations
  accepts_nested_attributes_for :materials, allow_destroy: true, limit:10
  accepts_nested_attributes_for :how_tos, allow_destroy: true, limit:10

  validates :title, presence: true

end
