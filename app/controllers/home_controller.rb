class HomeController < ApplicationController
  skip_before_action :authorize
  def about
  end

  def contact
  end

  def index
    @promotion = Promotion.where("startdate <= ? and enddate >= ?", Date.today, Date.today)
  end
  
  def cart
  end
  def help
  end
  
  def privacy
  end

  def products
  end

  def catalog
    @prod = Product.all
  end
  def buy
  # Get the specific product selected to be purchased and the quantity.
	# Converting the value to integer using the to_i method
	@prodid = params[:prodid].to_i;
	@qty = params[:qty].to_i;
	
	# Set session cart arrays to nil. 
	session[:cart_prod] << @prodid
	session[:cart_qty] << @qty

	# Redirect to display cart (shopping cart)
	redirect_to cart_url
  end
  
  def updatecart
 	# Get the specific item that needs to be removed
	cartid = params[:cartid].to_i;
  
	 # Remove the specific element that is desired to be removed from the array.
	session[:cart_prod].delete_at(cartid)
	session[:cart_qty].delete_at(cartid)
  
  	# Redirect to display cart (shopping cart)
	redirect_to cart_url
  end

#
 #  def checkout
  # 	cartlen = session[:cart_prod].length
  #	i=0
  #	if cartlen > 0
  #		# For each item in the shopping cart save the record in the in OrderItem table
  #		while i < cartlen
  #			Fruitsales.create(customer_id: session[:user_id], purchasedate: Date.today, fruit_id: session[:cart_prod][i].to_i, status: 'Purchased', saleprice: Products.find(session[:cart_prod][i].to_i).price)
  #		end 
  #		# Set session cart arrays to nil. 
  #	  session[:cart_prod] = Array.new
  #	  session[:cart_qty] = Array.new
#	end
  # end


  def search
    @results = 0
    if !params[:searchinput].nil?
      @resutls = 1
      @searchinput = params[:searchinput]
      @searchcriteria = "%#{params[:searchinput]}%"
     # @productlist = Products.where("description like?", @searchcriteria)
    #  if @productlist.length > 0
     #   @productid = @product[0].id
    #  else
     #   @productid =0
    #  end
    #  @productlist = Product.where("destination_id in (?) OR productnum like ?", @productid ,@searchcriteria)
    end
  end
  
end
