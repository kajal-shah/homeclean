class AddCleaneridToBookings < ActiveRecord::Migration
  def change
    add_reference :bookings, :cleaner, index: true, foreign_key: true
  end
end
