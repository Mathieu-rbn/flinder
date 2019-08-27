class Flat < ApplicationRecord
  belongs_to :user
  has_many :viewings
  has_many :matches
  has_many :flat_photos

  validates :title, presence: true
  validates :description, presence: true
  validates :property_type, presence: true

  # validates :bathroom, presence: true
  # validates :bedroom, presence: true
  # validates :street, presence: true
  # validates :district, presence: true
  # validates :city, presence: true
  # validates :total_rent, presence: true
  # validates :vacant_from, presence: true

  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
  # validates :bedroom, presence: true
end
