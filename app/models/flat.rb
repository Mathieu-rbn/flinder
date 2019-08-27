class Flat < ApplicationRecord
  belongs_to :user
  has_many :viewings
  has_many :matches
  has_many :flat_photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :title, presence: true
  validates :description, presence: true
  validates :property_type, presence: true
end


