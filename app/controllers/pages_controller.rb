class PagesController < ApplicationController

  def dashboard
    @planes = Plane.all
    @bookings = Booking.where(user: current_user)
  end

  def trips
  end

end
