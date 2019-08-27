class FlatPhoto < ApplicationRecord
  belongs_to :flat

  validates :data, presence: true
end
