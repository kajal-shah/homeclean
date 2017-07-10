class Booking < ActiveRecord::Base
belongs_to :customer 
  belongs_to :city ,:foreign_key => "city_id"
  belongs_to :cleaner, :foreign_key => "cleaner_id"

 
end
