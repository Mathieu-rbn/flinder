class MatchesController < ApplicationController
  def index
    @matches = current_user.flat.all_matches.sort_by { |match| match.id }.reverse
  end

  def show
    @match = Match.find(params[:id])
    @flat = @match.other_party(current_user.flat)
  end
end
