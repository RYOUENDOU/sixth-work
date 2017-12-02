class CheckoutController < ApplicationController
	before_action :authenticate_user!

	def purchase
		@cart_items = current_cart.cart_items
		order_products = @cart_items	
	end

	def purchase_list
		@order = Order.find(params[:id])

	end

	def address
		@user = current_user
		# if @user.account.present?
		# 	redirect_to address_path
		# else
		@account = current_user.accounts.new
		# end
	end

	def complete
		@account = current_user.accounts
		@account = current_user.accounts.new(account_params)
		@account.valid?
		# @account.user_id = current_user.id
	    if @account.save

			@cart_items = current_cart.cart_items
			order_products = @cart_items
			@order = Order.new
			@order.name = current_user.email
			@order.save
			@cart_items.each do |cart_item|
				@order_product = OrderProduct.new
				# binding.pry
				@order_product.title = cart_item.product.title
				@order_product.order_id = @order.id
				@order_product.product_id = cart_item.product_id
				@order_product.price = cart_item.product.price
				@order_product.quantity = cart_item.quantity
				@order_product.image = cart_item.product.image	
				@order_product.user_id = current_user.id
			    @order_product.save
		    end
		    session[:cart_id] = nil
			SampleMailer.send_when_update(current_user).deliver
			redirect_to purchase_list_path(@order.id)
		else
			render :action => "address"
		end
			
	end


	private	
	  	def account_params
	  		params.require(:account).permit(:postal_code, :name, :tel, :address, :image, :user_id)
	  	end
end
