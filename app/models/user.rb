class User < ApplicationRecord
  has_many :viewings
  has_one :flat
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :property_type, presence: true


  def matches_for_user?
    flat.asked_matches.present? || flat.received_matches.present?
  end
end
