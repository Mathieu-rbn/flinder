class ViewingsController < ApplicationController
  def create
    @viewing = Viewing.new(viewing_params)
    @flat = Flat.find(params[:flat_id])
    @viewing.flat = @flat
    @viewing.user = current_user
    if @viewing.save
      respond_to do |format|
        format.html {render 'viewings/like'}
        format.js
      end
    else
      respond_to do |format|
        format.html {render 'viewings/like'}
        format.js
      end
  end
end
      # if @viewing.is_matched?

      #   redirect_to flats_path, notice: "you have a match!"

      # else
      #   redirect_to flats_path
      # end

  def viewing_params
    params.require(:viewing).permit(:user, :like)
  end
end


