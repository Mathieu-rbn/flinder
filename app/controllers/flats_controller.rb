class FlatsController < ApplicationController
  def show
    @flat = Flat.find(params[:id])
    @markers = [{
        lat: @flat.latitude,
        lng: @flat.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { flat: @flat })
    }]
  end
end
