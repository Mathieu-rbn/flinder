class MatchesController < ApplicationController
  def index
    @matches = current_user.flat.all_matches.sort_by { |match| match.id }.reverse
    @photos = Photo.all
    #raise
    #@photos = Photo.where(flat_id: @matches.flat_id)
  end

  def show
    @match = Match.find(params[:id])
    @flat = @match.other_party(current_user.flat)
  end
end
