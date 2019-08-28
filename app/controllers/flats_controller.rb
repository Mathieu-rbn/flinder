class FlatsController < ApplicationController

  def show
    @flat = Flat.find(params[:id])
    @markers = [{
        lat: @flat.latitude,
        lng: @flat.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { flat: @flat })
    }]
  end

  def new
    @flat = Flat.new
  end

  # def index
  #   @flats = Flat.all
  # end

  # def show
  #   @flat = Flat.find(params[:id])
  # end

  def create
    @flat = Flat.new(flat_params)
    # @user = current_user
    # @flat.user = @user
    @flat.save
  end

  # def edit
  #   @flat = Flat.find(params[:id])
  # end

  # def update
  #   @flat = Flat.find(params[:id])
  # end

  # def delete
  #   @flat = Flat.find(params[:id])

  def flat_params
    params.require(:flat).permit(:title, :description, :bathroom, :bedroom, :property_type, :street,
                                 :district, :post_code, :city, :price, :content, :total_rent,
                                 :garage, :level_floor, :floors_number, :vacant_from, :square_meter,
                                 :land, :year_construction, :type_heating, :extra, :radius)
  end
end
