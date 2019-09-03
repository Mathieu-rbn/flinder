class UsersController < ApplicationController
  protect_from_forgery

  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   # @user = User.new(params[:id])
  #   @user = current_user
  #   @user.save
  #   redirect_to flat_path
  # end

  # def edit
  #   # @user = User.find(params[:id])
  #   @user = current_user
  # end

  # def update
  #   # @user = User.find(params[:id])
  #   @user = current_user
  #   # @user.update
  #   @user.update(params[:user])
  #   redirect_to flats_path
  # end
# end

private

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :created_at, :updated_at, :first_name, :last_name, :profile_photo, :profession, :people_number, :profile_description, :relationship_status, :mobile, :bathroom, :bedroom, :property_type, :street,
                                 :district, :post_code, :city, :total_rent,
                                 :garage, :level_floor, :floors_number, :vacant_from, :square_meter,
                                 :land, :year_construction, :type_heating, :elevator)
  end
end
