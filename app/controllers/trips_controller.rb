class TripsController < ApplicationController
  def index
    @trips = Trip.all
    @trip = Trip.new
  end

  def new
    @trip = Trip.new
    @trip.build_logo
  end

  def create
    @trip = current_user.trips.build(params[:trip])
    respond_to do |format|
      if @trip.save
        flash[:notice] = "Successfully created trip."
        format.html { redirect_to trips_url, :notice => "post created with non ajax"}
        format.js
      else
        render :action => 'new'
      end
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def show
    @trip = Trip.find(params[:id])  
  end

  def destroy
   @trip = Trip.find(params[:id]) 
   @trip.destroy
   respond_to do |format|
     format.html { redirect_to dashboard_path}
     format.js
   end
  end

end
