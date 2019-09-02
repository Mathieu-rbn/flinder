class Viewing < ApplicationRecord

  def intialize
    @is_matched = false
  end
  belongs_to :user
  belongs_to :flat
  validates :user, uniqueness: { scope: :flat }

  after_save :check_matching, if: :like?
  def  is_matched
    @is_matched
  end
  private

  def check_matching
    matched = MatcherService.check(self)
    @is_matched = true if matched == 1
  end
end
