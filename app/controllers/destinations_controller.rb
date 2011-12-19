class DestinationsController < ApplicationController
  def index
    @trip = Trip.find(params[:trip_id])
    @destinations = Destination.all
    @destination = Destination.new
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @destination = Destination.new
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @destination = @trip.destinations.build(params[:destination])
    respond_to do |format|
      if @destination.save
        flash[:notice] = "Successfully created destination."
        format.html { redirect_to trip_destinations_url, :notice => "post created with non ajax"}
        format.js
      else
        render :action => 'new', :notice => "post was not created"
      end
    end
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def show
    @destination = Destination.find(params[:id])  
  end

  def destroy
    @destination = Destination.find(params[:id]) 
    @destination.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_path}
      format.js
    end
  end
end
