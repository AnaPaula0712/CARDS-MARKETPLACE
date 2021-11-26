class Card < ApplicationRecord
  CATEGORIES = %w[Land Creature Artifact Enchantment Planeswalker Instant Sorcery]
  CONSERVATIONS = %w[M NM SP MP HP D]
  COLORS = %w[White Blue Black Red Green Colorless]
  RARITIES = ["Commom", "Uncommom", "Rare", "Mythic Rare"]

  belongs_to :user
  has_many :questions
  has_one :order
  validates :name, :price, :category, :conservation_state,
            :color, :rarity, presence: true
  validates :foil, :available, inclusion: { in: [true, false] }

  include PgSearch::Model
  pg_search_scope :search_by_name, against: [:name], using: { tsearch: { prefix: true } }
end
