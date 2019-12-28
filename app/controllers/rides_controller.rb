class RidesController < ApplicationController

  def index


    @all_rides = Ride.all.includes(:driver, :ride_requests)
    @ride_count = Ride.count
    # Ride.all.each do |ele|
    #   @all_rides.push(ele)
    # end

    # @drivers = []
    # Drivers.joins("inner join rides on drivers.id==rides.driver_id").each do |ele|
    #   @drivers.push(ele)
    # end

    # @cabs = []
    # Cabs.joins("inner join rides on cabs.id==rides.cab_id").each do |ele|
    #   @cabs.push(ele)
    

  end

  # def new
  #   render :new
  # end

  # def create
  #   puts params
  #   render :new
  # end

end
