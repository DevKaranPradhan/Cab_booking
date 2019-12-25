class Cab < ApplicationRecord
  has_many :rides
  validates_associated :rides
end
