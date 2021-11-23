class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :cards, dependent: :destroy
  has_many :orders
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
end
