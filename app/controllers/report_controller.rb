class ReportController < ApplicationController
  def reportlist
  end 

  def customerlist
    #Customer data from the database 
     @customerdata = Customer.order("lastname")
  end

  def productlist
    @productdata = Product.all
  end

  def salelist
  end
end
