class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      latitud = @location.latitud
      longitud = @location.longitud
      @prevision = get_prevision(latitud, longitud)
      render 'show'
    else
      render 'new'
    end
  end

  private

  def location_params
    params.require(:location).permit(:direccion)
  end
end
