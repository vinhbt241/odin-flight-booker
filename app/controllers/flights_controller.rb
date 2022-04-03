class FlightsController < ApplicationController
  def index 
    @airports = Airport.all
    @flight_dates = Flight.order("flight_date ASC").pluck(:flight_date).uniq
    @flights = search_flights
  end

  private

  def search_flights
    Flight.where("departure_airport_id = ? AND arrival_airport_id = ? AND flight_date = ?", params[:departure_airport_id], params[:arrival_airport_id], params[:flight_date])
  end
end
