class Flat < ApplicationRecord
  belongs_to :user
  has_many :viewings
  has_many :asked_matches, foreign_key: :asker, class_name: "Match"
  has_many :received_matches, foreign_key: :receiver, class_name: "Match"
  has_many :flat_photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # validates :title, presence: true
  # validates :description, presence: true
  # validates :property_type, presence: true
  # mount_uploader :photo, PhotoUploader

  def all_matches
    received_matches + asked_matches
  end
end
