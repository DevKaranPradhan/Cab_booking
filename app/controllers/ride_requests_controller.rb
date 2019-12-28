class RideRequestsController < ApplicationController
  @@rideid
  def index
     params
     @requests = RideRequest.where(ride_id: params["ride_id"])
  end

  def new
    params
    @@rideid = params["ride_id"]
  end

  def create
    #puts "saasdadadsadadnadnsnd,andm, ====== #{@@rideid}"
    
    #obj = User.find_by(email: params["email"])
    RideRequest.create(destination: params["destination"], status: "booked", user_id: session[:user_id], ride_id: @@rideid) 
    redirect_to rides_path
  end
end
