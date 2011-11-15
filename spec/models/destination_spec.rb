require 'spec_helper'

describe Destination do

  before(:each) do
    @destination = Factory.build(:destination) 
  end

  it 'should be valid with correct values' do
    @destination.should be_valid
  end

  it 'should be invalid without an arrival date' do
    @destination.arrival = nil
    @destination.should be_invalid 
  end

  it 'should be invalid without a departure date' do
    @destination.departure = nil
    @destination.should be_invalid 
  end

  it 'should be invalid without a name' do
    @destination.name = nil  
    @destination.should be_invalid 
  end

  it 'should be invalid with a departure date prior to the arrival date' do
    @destination.departure = Date.today
    @destination.arrival = Date.today + 1.day
    @destination.should be_invalid 
  end
  
  #it 'should have one transportation for arrival' do
    #@destination.transportation_arrival = nil
    #@destination.should be_invalid 
  #end

  #it 'should have one transportation for departure' do
    #@destination.transportation_departure = nil
    #@destination.should be_invalid 
  #end

end
