# == Schema Information
#
# Table name: destinations
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  arrival    :date
#  departure  :date
#  trip_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Destination < ActiveRecord::Base
  belongs_to :trip
  has_one :transportation_arrival,
          :class_name => 'Transportation',
          :foreign_key => 'transportation_arrival_id'
  has_one :transportation_departure,
          :class_name => 'Transportation',
          :foreign_key => 'transportation_departure_id'

  attr_accessible :name, :arrival, :departure

  validates       :name,      :presence  => true
  validates       :arrival,   :presence  => true   
  validates       :departure, :presence  => true   
  validate :valid_arrival?
  # Is transportation mode mandatory ?
  #validates       :transportation_arrival,
    #:presence => { :message => 'there should be a transportation for arrival' }
  #validates       :transportation_departure,
    #:presence => { :message => 'there should be a transportation for departure' }

  #delegate :arrival_transportation_mode, :to => :transportation


  private

  def valid_arrival?
    arrival_prior_to_departure? unless ( self.departure && self.arrival ) == nil
    
  end

  def arrival_prior_to_departure?
    errors.add(:arrival, "must be before Departure date") unless
    self.departure > self.arrival
  end

end
