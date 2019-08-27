class FlatPhoto < ApplicationRecord
  belongs_to :flat
  mount_uploader :data, PhotoUploader

  validates :data, presence: true
end
