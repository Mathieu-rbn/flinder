class Viewing < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  after_save :check_matching, if: :like?

  private

  def check_matching
    MatcherService.check(self)
  end
end
