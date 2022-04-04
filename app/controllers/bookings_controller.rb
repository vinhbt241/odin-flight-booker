class BookingsController < ApplicationController
  def new 
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    params[:num_of_passengers].to_i.times { @booking.passengers.build }
    @passengers = @booking.passengers
  end

  def create 

  end
end
