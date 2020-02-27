class PlanesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @planes = Plane.search_by_location_and_name_and_pilot_name(params[:query])
    else
      @planes = Plane.all
    end
  end

  def show
    @plane = Plane.find(params[:id])
    @booking = Booking.new
    # trying to integrate the map here, this is new
    @planes = Plane.geocoded
    @planes = @planes.where(id: params[:id])
    @markers = @planes.map do |plane|
      {
        lat: plane.latitude,
        lng: plane.longitude
      }
  end
end

  def new
    @plane = Plane.new
  end

  def create
    @plane = Plane.new(plane_params)
    @plane.user = current_user
    if @plane.save
    # redirect_to plane_path(@plane)
    else
      render :new
    end

  end

  private

  def plane_params
    params.require(:plane).permit(:capacity, :location, :name, :rate, :description, :pilot_name, :photo)
  end



end
