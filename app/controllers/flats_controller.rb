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


  def next
    Flat.next
  end

 
  def index
    #@flats = Flat.all
#    @flats = @flats.where("district ILIKE ?", "%#{params[:query]}%") if params[:query].present?
#    @flats = @flats.where(bedroom: params[:query1].to_i) if params[:query1].present?
#    @flats = @flats.where("street ILIKE ?", "%#{params[:query2]}%") if params[:query2].present?
  end

  def create
    @flat = Flat.new(flat_params)
    @user = current_user

    @flat.user = @user
    @flat.save
    redirect_to flat_path(@flat)
    # redirect_to new_flat_path
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
                                 :land, :year_construction, :type_heating, :elevator, :photo)
  end
end
