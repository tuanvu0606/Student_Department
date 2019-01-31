# models/concerns/current_cart.rb

module CurrentOrder

  private
    def set_order
      @order = Order.find(cookies[:order_id])   
      rescue ActiveRecord::RecordNotFound
        @order = Order.create(:state => '1')
        cookies[:order_id] = @order.id
      #binding.pry
    end

end
