class BookingsController < ApplicationController

  def new
    @plane = plane.find(params[:plane_id])
    @booking = Booking.new
  end

  def create
    @plane = Plane.find(params[:plane_id])
    @booking = Booking.new(booking_params)
    @booking.plane = @plane
    @booking.user = current_user
    if @booking.save
      redirect_to plane_path(@plane)
    else
     render 'planes/show'
    end
  end

   def destroy
    @booking = Booking.find(params[:id])
    @plane = @booking.plane
    @booking.destroy
    redirect_to plane_path(@plane)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :plane_id, :start, :end)
  end

end

