class CleanersController < ApplicationController


  before_action :authenticate_customer!
  
  def index 
    @cleaners = Cleaner.where(:customer_id => current_customer.id)
  end
  
  def show 
   @cleaner = Cleaner.find(params[:id])
  end
  
  def new 
    @cleaner = Cleaner.new
  end
  
  def create 
     @cleaner = Cleaner.new(cleaner_params)            
    if  @cleaner.valid? 
        @cleaner.customer = current_customer
        @cleaner.save 
      redirect_to cleaners_path
    else 
      render :new
    end
  end
  
  def edit 
  @cleaner = Cleaner.find(params[:id])
  end 
  
  def update 
  	@cleaner = Cleaner.find(params[:id])
 	if @cleaner.update(cleaner_params)
     	redirect_to @cleaner
    else
      render 'edit'
    end
  end
  
  def destroy 
  	@cleaner = Cleaner.find(params[:id])
    @cleaner.destroy
    redirect_to cleaners_path

  end
  
  private 
  
  def cleaner_params 
    params.require(:cleaner).permit(:first_name, :last_name, :quality_score)
  end
end
