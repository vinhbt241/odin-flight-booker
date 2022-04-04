class AddAssociationsToBooking < ActiveRecord::Migration[7.0]
  def change
    add_belongs_to :bookings, :flight
    add_belongs_to :bookings, :passenger
  end
end
