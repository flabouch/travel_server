class User < ActiveRecord::Base
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end

  attr_accessible :email, :password, :password_confirmation,
    :profile_attributes, :authentications_attributes, :trips_attributes

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  has_one :profile, dependent: :destroy
  has_many :authentications, :dependent => :destroy
  has_many :trips, :dependent => :destroy
  accepts_nested_attributes_for :profile, :authentications, :trips
end
