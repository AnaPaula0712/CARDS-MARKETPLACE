class Card < ApplicationRecord
  belongs_to :user
  has_one :order
  validates :name, :price, :category, :conservation_state,
            :color, :rarity, presence: true
  validates :foil, :available, inclusion: { in: [true, false] }
end
