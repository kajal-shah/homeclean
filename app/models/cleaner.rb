class Cleaner < ActiveRecord::Base



  validates :quality_score, :inclusion => { :in => 0.0..5.0, :message => " should be between 0.0 to 5.0" }
  validates :first_name,:last_name, :presence => { :message => " cannot be blank" }
   
  belongs_to :customer 
  has_many :bookings, dependent: :destroy 
  has_many :cities, through: :bookings

end
