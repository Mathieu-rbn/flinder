class User < ApplicationRecord
  has_many :viewings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :property_type, presence: true

  # validates :street, presence: true
  # validates :district, presence: true
  # validates :city, presence: true
  # validates :total_rent, presence: true
  # validates :bathroom, presence: true
  # validates :bedroom, presence: true
  # validates :vacant_from, presence: true

  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
  # validates :bedroom, presence: true

  validates :exemple_a, presence: true
  validates :exemple_b, uniqueness: true

end
