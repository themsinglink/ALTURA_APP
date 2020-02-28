class PagesController < ApplicationController

  def dashboard
    @planes = Plane.all
  end
end
