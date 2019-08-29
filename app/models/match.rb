class Match < ApplicationRecord
  belongs_to :asker, class_name: 'Flat'
  belongs_to :receiver, class_name: 'Flat'

  validates :asker, uniqueness: { scope: :receiver }
end
