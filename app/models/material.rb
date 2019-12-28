class Material < ApplicationRecord
  belongs_to :recipe

  validates :material, presence: true
  validates :serving, presence: true
end
