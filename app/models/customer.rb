class Customer < ActiveRecord::Base

	validates_presence_of :first_name,:last_name
  validates_uniqueness_of :first_name,:last_name
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

          has_many :cleaners 
  has_many :bookings 
  has_many :cities
end
