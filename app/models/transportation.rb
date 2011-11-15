# == Schema Information
#
# Table name: transportations
#
#  id         :integer         not null, primary key
#  mode       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
#
class Transportation < ActiveRecord::Base
  belongs_to :destination

  before_save :pretty_attributes
  
  attr_accessible :mode
  validates :mode, :presence => true, :uniqueness => { :case_sensitive => false }
  
  def arrival_transportation_mode
    self.mode
  end

  private

  def pretty_attributes
    self.mode.downcase!    
  end

end
