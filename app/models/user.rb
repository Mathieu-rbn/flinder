class User < ApplicationRecord
  has_many :viewings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :title, presence: true
  validates :description, presence: true
  validates :property_type, presence: true
end
