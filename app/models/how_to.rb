class HowTo < ApplicationRecord
  belongs_to :recipe

  validates :howto, presence: true, length: { maximum: 50 }  
end
