class PagesController < ApplicationController

  def dashboard
    @planes = Plane.all
    if User.planes.any?
      render '/dashboard'
    else
      render '/trips'
    end
  end
end
