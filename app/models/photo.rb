class Photo < ApplicationRecord
  belongs_to :flat
  mount_uploader :photo, PhotoUploader
end
