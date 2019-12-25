class User < ApplicationRecord

  validates :first_name, :last_name, :contact_number, :email, presence: true
  validates :contact_number, uniqueness: true, length: {is: 10}
  validates :email, uniqueness: true, format: {with: /\A[a-zA-Z0-9]+[._]*[a-zA-Z0-9]*['@'][a-zA-Z]+[.][a-zA-Z]+\Z/, message: "invlid format"}
  has_one :ride_request
  validates_associated :ride_request


  before_save do
    self.first_name = self.first_name.titleize
    self.last_name = self.last_name.titleize
  end

end
