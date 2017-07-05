class AddBookingtimeToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :booking_time, :datetime
  end
end
