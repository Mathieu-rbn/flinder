class MatchesController < ApplicationController
  def index
    @matches = current_user.flat.all_matches
  end

  def show
    @match = Match.find(params[:id])
  end
end
