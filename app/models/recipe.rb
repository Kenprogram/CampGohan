class Recipe < ApplicationRecord
  has_many :materials, dependent: :destroy
  has_many :how_tos, dependent: :destroy
  has_many :recipe_category_relations
  has_many :categories, through: :recipe_category_relations
  has_one_attached :thumbnail
  accepts_nested_attributes_for :materials, limit:10
  accepts_nested_attributes_for :how_tos, limit:10

  validates :title, presence: true

end
