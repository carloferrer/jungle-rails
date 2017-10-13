class CartsController < ApplicationController

  def show
    if cart.length == 0
      # render html: "<script>alert('Cart cannot be empty!')</script>".html_safe
      # redirect_to :back
    end
  end

  def add_item
    product_id = params[:product_id].to_s
    product_quantity = Product.find_by(id: product_id).quantity
    if product_quantity > 0
      item = cart[product_id] || { "quantity" => 0 }
      if item['quantity'] < product_quantity
        item["quantity"] += 1
        cart[product_id] = item
        update_cart cart
        redirect_to :back
      else
        redirect_to :back
      end
    else
      render html: "<script>alert('You can't add this item to cart when there are none left!')</script>".html_safe
    end
  end

  def remove_item
    product_id = params[:product_id].to_s

    item = cart[product_id] || { "quantity" => 1 }
    item["quantity"] -= 1
    cart[product_id] = item
    cart.delete(product_id) if item["quantity"] < 1
    update_cart cart

    redirect_to :back
  end

end
