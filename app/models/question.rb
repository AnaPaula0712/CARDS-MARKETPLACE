class Question < ApplicationRecord
  belongs_to :card
  validates :context, presence: true
end
