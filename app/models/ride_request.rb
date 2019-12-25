class RideRequest < ApplicationRecord

  belongs_to :user
  belongs_to :ride
  validates :destination, presence: true

end
