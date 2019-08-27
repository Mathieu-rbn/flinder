class Flat < ApplicationRecord
  belongs_to :user
  has_many :viewings
  has_many :matches
  has_many :flat_photos

  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :property_type, presence: true
end
