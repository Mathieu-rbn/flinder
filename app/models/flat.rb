class Flat < ApplicationRecord
  belongs_to :user
  has_many :viewings
  has_many :matches
  has_many :flat_photos

  # validates :title, presence: true
  # validates :description, presence: true
  # validates :property_type, presence: true
  # mount_uploader :photo, PhotoUploader
end
