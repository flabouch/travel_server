class DashboardController < ApplicationController
  def index
    @trips = current_user.trips
    @trip = Trip.new
    @current_trip = params[:trip_id] ? Trip.find(:trip_id) : current_user.trips.last
    @destination = Destination.new
  end
end
