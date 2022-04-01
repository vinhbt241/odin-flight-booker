class FlightsController < ApplicationController
  def index 
    @airports = Airport.all
    @flights = Flight.all
  end
end
