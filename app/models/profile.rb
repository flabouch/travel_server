class Profile < ActiveRecord::Base
  attr_accessible :full_name
  belongs_to :user
end
