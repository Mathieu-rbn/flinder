class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :user_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:account_update,:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :created_at, :updated_at, :first_name, :last_name, :profile_photo, :profession, :people_number, :profile_description, :relationship_status, :mobile, :bathroom, :bedroom, :property_type, :street,
                                 :district, :post_code, :city, :total_rent,
                                 :garage, :level_floor, :floors_number, :vacant_from, :square_meter,
                                 :land, :year_construction, :type_heating, :elevator])
  end

  def default_url_options
    { host: ENV["www.flinder.xyz"] || "localhost:3000" }
  end


end
