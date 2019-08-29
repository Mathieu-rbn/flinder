class ViewingsController < ApplicationController
  def new
    @viewing = Viewing.create(user_id: current_user.id, flat_id: params[:flat_id], like: params[:like])
    redirect_to flat_path(@viewing.flat)
  end
end
