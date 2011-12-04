class DashboardController < ApplicationController
  def index
    @trips = current_user.trips
    @trip = Trip.new
  end
end
