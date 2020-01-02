class Material < ApplicationRecord
  belongs_to :recipe

  validates :material, presence: true, length: { in: 1..10 }
  validates :serving, presence: true, length: { in: 1..10 }
end
