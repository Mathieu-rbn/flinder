class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @flats = Flat.where(user_id: @user.id)
  end
end
