class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
    # @flats = @flats.where("district ILIKE ?", "%#{params[:query]}%") if params[:query].present?
    # @flats = @flats.where(bedroom: params[:query1].to_i) if params[:query1].present?
    # @flats = @flats.where("street ILIKE ?", "%#{params[:query2]}%") if params[:query2].present?
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    # @flat = Flat.find(params[:id])
    @markers = [{
      lat: @flat.latitude,
      lng: @flat.longitude,
      infoWindow: render_to_string(partial: 'info_window', locals: { flat: @flat })
    }]
  end

  def new
    @flat = Flat.new
  end

  def next
    Flat.next
  end

  def create
    @flat = Flat.new(flat_params)
    @user = current_user

    @flat.user = @user
    @flat.save

    create_photos(@flat)
    redirect_to flat_path(@flat)
    # redirect_to new_flat_path
  end

     private

  # Use callbacks to share common setup or constraints between actions.
  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:title, :description, :bathroom, :bedroom, :property_type, :street,
                                 :district, :post_code, :city, :price, :content, :total_rent,
                                 :garage, :level_floor, :floors_number, :vacant_from, :square_meter,
                                 :land, :year_construction, :type_heating, :elevator)
  end

  def create_photos (resource)
    images = params.dig(:flat, :photos) || []
    images.each do |image|
      resource.photos.create(photo: image)
    end
  end

end
