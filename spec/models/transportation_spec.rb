require 'spec_helper'

describe "Transportation model" do

  before(:each) do
   @transportation = Factory.build(:transportation) 
  end

  it 'is valid with proper values' do
    @transportation.should be_valid
  end

  it 'is not valid with an empty mode' do
    @transportation.mode = ''
    @transportation.should_not be_valid
  end
  it 'is not valid with a nil mode' do
    @transportation.mode = nil
    @transportation.should_not be_valid
  end

  it 'mode should not be save with upper case' do
    @transportation.save!
    @transportation.mode.should_not == 'Bus'
  end
end

# == Schema Information
#
# Table name: transportations
#
#  id         :integer         not null, primary key
#  mode       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

