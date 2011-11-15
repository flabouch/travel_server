# == Schema Information
#
# Table name: trips
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  public_url  :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Trip < ActiveRecord::Base
  has_many :destinations, :dependent => :destroy
end

