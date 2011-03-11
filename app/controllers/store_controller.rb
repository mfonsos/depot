class StoreController < ApplicationController
  def index
    @products = Product.all
    @cart = current_cart
    if session[:counter].nil?
       session[:counter] = 0
       @display_counter == false
    end
      @counter = session[:counter] += 1
      if session[:counter] > 5
        @display_counter = @counter
      end
    
    
  end

end
