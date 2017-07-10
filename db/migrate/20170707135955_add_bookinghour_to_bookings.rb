class AddBookinghourToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :booking_hour, :datetime
  end
end
