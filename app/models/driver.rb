class Driver < ApplicationRecord
  has_many :rides
  validates_associated :rides
end
