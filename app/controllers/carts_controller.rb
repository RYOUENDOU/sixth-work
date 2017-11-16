class CartsController < ApplicationController
  
  def show
    @products = CartItem.all
    @cart_items = current_cart.cart_items
  end

  def add_item
      @product = Product.find(params[:product_id])
         if @cart_item.nil?
         @cart_item = current_cart.cart_items.new(quantity: params[:quantity])
         @cart_item.product_id = @product.id
         @cart_item.quantity += params[:quantity].to_i
         current_cart.save
         @cart_item.save
         redirect_to add_item_path
      end 
  end

  def update_item
    @cart_item.update(quantity: params[:quantity].to_i)
    redirect_to current_cart
  end

  def delete_item
    @cart_item.destroy
    redirect_to current_cart
  end
end