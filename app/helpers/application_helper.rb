module ApplicationHelper

  def cart_count_over_one
  	#binding.pry
    if @order != nil
      if @order.order_line_items.count > 0
        #binding.pry
        return "<span class='tag is-dark'>#{@order.order_line_items.sum(:order_item_qty)}</span>".html_safe
        #render html: @cart.order_line_items.count
      end
    end
  end

  def cart_has_items
    return @order.order_line_items.count > 0
  end	
 

end
