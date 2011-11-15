require 'factory_girl'

Factory.define :user do |u|
  u.name 'Test User'
  u.email 'user@test.com'
  u.password 'please'
end

Factory.define :transportation do |t|
  t.mode 'Bus'
end

Factory.define :destination do |d|
  d.name 'Destination test'
  d.arrival Date.today
  d.departure Date.today + 1.day
end
