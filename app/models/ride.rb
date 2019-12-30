class Ride < ApplicationRecord
  belongs_to :driver
  belongs_to :cab
  has_many :ride_requests
  validates_associated :ride_requests

  def driver_name
    puts "#{self.driver.first_name} #{self.driver.last_name}"
  end


end
