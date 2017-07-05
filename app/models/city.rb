class City < ActiveRecord::Base
	belongs_to :customer 
  has_many :bookings, dependent: :destroy 
  has_many :cleaners, through: :bookings
end
