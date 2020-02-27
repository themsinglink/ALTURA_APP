class BookingsController < ApplicationController


def new
  @plane = plane.find(params[:plane_id])
  @booking = Booking.new
end

def create
  @plane = Plane.find(params[:plane_id])
  @booking = Booking.new(booking_params)
  @booking.plane = @plane
  if @plane.save
    redirect_to plane_path(@plane)
  else
   render :new
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
  params.require(:booking).permit(:message, :start_date, :end_date, :start_time, :end_time, :plane_id)
end

end

end
