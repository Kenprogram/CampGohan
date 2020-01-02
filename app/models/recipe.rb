class Recipe < ApplicationRecord
  has_many :materials, dependent: :destroy
  has_many :how_tos, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_one_attached :thumbnail
  accepts_nested_attributes_for :categories, limit:3
  accepts_nested_attributes_for :materials, limit:10
  accepts_nested_attributes_for :how_tos, limit:10

  belongs_to :user
  
  validates :title, presence: true

end
