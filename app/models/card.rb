class Card < ApplicationRecord
  CATEGORIES = %w[land creature artifact enchantment planeswalker instant sorcery]
  CONSERVATIONS = %w[M NM SP MP HP D]
  COLORS = %w[white blue black red green colorless]
  RARITIES = ["commom", "uncommom", "rare", "mythic rare"]

  belongs_to :user
  has_many :questions
  has_one :order
  has_one_attached :picture # should adjust with "photo" in database?
  validates :name, :price, :category, :conservation_state,
            :color, :rarity, presence: true
  validates :foil, :available, inclusion: { in: [true, false] }

  include PgSearch::Model
  pg_search_scope :search_by_name, against: [:name], using: { tsearch: { prefix: true } }
end
