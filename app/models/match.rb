class Match < ApplicationRecord
  belongs_to :asker, class_name: 'Flat'
  belongs_to :receiver, class_name: 'Flat'

  validates :asker, uniqueness: { scope: :receiver }

  def other_party(flat)
    if flat == asker
      return receiver
    elsif flat == receiver
      return asker
    end
  end
end

