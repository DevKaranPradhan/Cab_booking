class Ride < ApplicationRecord
  belongs_to :driver
  belongs_to :cab
  has_many :ride_requests
  validates_associated :ride_requests
end
