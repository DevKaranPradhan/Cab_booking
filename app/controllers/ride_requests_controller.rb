class RideRequestsController < ApplicationController
  def index
    params
    @requests = RideRequest.where(ride_id: params["ride_id"])
  end
end
