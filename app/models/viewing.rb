class Viewing < ApplicationRecord

  belongs_to :user
  belongs_to :flat
  validates :user, uniqueness: { scope: :flat }

  after_save :check_matching, if: :like?

  def matched?
    check_matching == 1
  end

  private

  def check_matching
    MatcherService.check(self)
  end
end
