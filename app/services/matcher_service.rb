class MatcherService
  def self.check(viewing)
    matching_viewing = Viewing.find_by(flat: viewing.user.flat, user: viewing.flat.user)
    if matching_viewing.present?
      Match.create(asker: viewing.flat, receiver: matching_viewing.flat)
      return 1
    end
    return 0
  end
end
