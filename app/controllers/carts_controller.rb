class CartsController < ApplicationController

  def show
    if session.id.presence
      @cart_items = current_cart.cart_items
      @cart = current_cart
    else
      redirect_to products_path
    end
  end

  def add_item
    if session.id.presence
         @cart = Cart.new
         current_cart = @cart
         @cart_item = current_cart.cart_items.new(cart_item_params)
         @cart_item.save
         @cart.save
         session[:cart_id] = current_cart.id
         redirect_to add_item_path
    else
      redirect_to products_path
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

    
  private
  def cart_item_params
    params.require(:cart_item).permit(:product_id, :quantity)
  end
end