class HowTo < ApplicationRecord
  belongs_to :recipe

  validates :howto, presence: true
end
