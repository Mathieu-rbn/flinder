class ViewingsController < ApplicationController
  def create
    @viewing = Viewing.new(viewing_params)
    @flat = Flat.find(params[:flat_id])
    @viewing.flat = @flat
    @viewing.user = current_user
    if @viewing.save
      matched = @viewing.matched?
      @match = Match.last
      @flats = Flat.flat_query(current_user)
      render json: { matched: matched, flats: @flats }
    else
      @flats = Flat.flat_query(current_user)
      redirect_to flats_path, alert: "issue with this Match"
    end
  end

  def viewing_params
    params.require(:viewing).permit(:user, :like)
  end
end
