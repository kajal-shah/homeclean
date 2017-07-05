class BookingsController < ApplicationController

before_action :authenticate_customer!
  
    
  def index 
  @bookings = Booking.where(:customer_id => current_customer.id)
  #  @bookings = Booking.all
  end 
  
  def show 
  	@booking = Booking.find(params[:id])
  end
  
  def new 
     @booking = Booking.new
  end
  
  def create 
     @booking = Booking.new(booking_params)            
    if  @booking.valid? 
        @booking.customer = current_customer
        @booking.save 
      redirect_to bookings_path
    else 
      render :new
    end
  end
  
  def edit 
  	@booking = Booking.find(params[:id])

  end
  
  def update 
  	@booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else 
      render :edit
    end
  end
  
  def destroy 
  	@booking = Booking.find(params[:id])
    @booking.destroy 
    redirect_to bookings_path
  end
  
  
  private 
 
  
  def booking_params
    params.require(:booking).permit(:cleaner_id, :city_id, :booking_time)
end

end
