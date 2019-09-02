class ViewingsController < ApplicationController
  def create
    @viewing = Viewing.new(viewing_params)
    @flat = Flat.find(params[:flat_id])
    @viewing.flat = @flat
    @viewing.user = current_user
    if @viewing.save
      if @viewing.is_matched
        redirect_to flats_path, notice: "you have a match!"
      else
        redirect_to flats_path
      end
    end
  end

  def viewing_params
    params.require(:viewing).permit(:user, :like)
  end
end
