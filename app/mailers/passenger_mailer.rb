class PassengerMailer < ApplicationMailer
  default from: "odin-flight-booker@example.com"

  def confirm_email
    @booking = params[:booking]

    @booking.passengers.each do |passenger|
      mail(to: passenger.email, subject: "Thank you for choosing our service!" )
    end
  end
end
