class ViewingsController < ApplicationController
  def new
    @viewing = Viewing.create(user_id: current_user.id, flat_id: params[:flat_id], like: params[:like])
    @flats = Flat.all #change it if flats are filtered
    index = @flats.index(@viewing.flat)
    next_flat = @flats[index + 1]
    redirect_to flat_path(next_flat)
  end
end
