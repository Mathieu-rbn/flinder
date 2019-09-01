class ViewingsController < ApplicationController
  def create
    @viewing = Viewing.new(viewing_params)
    @flat = Flat.find(params[:flat_id])
    @viewing.flat = @flat
    @viewing.user = current_user
    if @viewing.save
      redirect_to flat_path @flat
    end
  end

  def viewing_params
    params.require(:viewing).permit(:user, :like)
  end
end
