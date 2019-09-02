class Flat < ApplicationRecord
  # mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :viewings
  has_many :asked_matches, foreign_key: :asker, class_name: "Match"
  has_many :received_matches, foreign_key: :receiver, class_name: "Match"
  has_many :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.flat_query(user)
    viewed_flats = user.viewings.pluck(:flat_id)
    @flats = Flat.where.not(id: viewed_flats)
    @flats = @flats.where(district: user.district)
    @flats = @flats.where(bathroom: user.bathroom)
    .or(@flats.where(bedroom: user.bedroom)
    .or(@flats.where(type_heating: user.type_heating)))

    return @flats.uniq
  end
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :property_type, presence: true
  # mount_uploader :photo, PhotoUploader

  def all_matches
    received_matches + asked_matches
  end
end
