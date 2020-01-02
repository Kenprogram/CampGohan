class Category < ApplicationRecord
  belongs_to :recipe

  validates :name, presence: true, length: { in: 1..5 }
end
