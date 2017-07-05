class AddCustomeridToBookings < ActiveRecord::Migration
  def change
    add_reference :bookings, :customer, index: true, foreign_key: true
  end
end
