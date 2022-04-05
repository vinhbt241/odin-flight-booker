class BookingsController < ApplicationController
  def new 
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    params[:num_of_passengers].to_i.times { @booking.passengers.build }
    @passengers = @booking.passengers
  end

  def create 
    @booking = Booking.new(booking_params)

    if @booking.save 
      flash.notice = "Flight from #{@booking.flight.departure_airport.code} to #{@booking.flight.arrival_airport.code} with #{@booking.passengers.length} passengers was successfully booked"
      
      redirect_to flights_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end

end
