class ViewingsController < ApplicationController
  def create
    @viewing = Viewing.new(viewing_params)
    @flat = Flat.find(params[:flat_id])
    @viewing.flat = @flat
    @viewing.user = current_user
    if @viewing.save
      @flats = Flat.flat_query(current_user)
      respond_to do |format|
        format.html { redirect_to flats_path }
        format.js # viewings/create.js.erb
      end
    else
      @flats = Flat.flat_query(current_user)
      respond_to do |format|
        format.html { redirect_to flats_path }
        format.js
      end
    end
  end

  def viewing_params
    params.require(:viewing).permit(:user, :like)
  end
end
