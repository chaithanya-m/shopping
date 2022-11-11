class OrderItemsController < ApplicationController

	def index
		@orders = Order.all
		# @order_items = @order.order_items
	end
	

	def create
		@order= Order.create
		@cart = Cart.last
		@cart_items = @cart.cart_items
		@temp1 = @order.totalPrice
		@temp3 = 0
		@cart_items.each do |cart_item|
			@temp2 = cart_item.product.productPrice * cart_item.quantity
			OrderItem.create!(:product_id => cart_item.product.id,
				              :productPrice => cart_item.product.productPrice,
				              :totalPrice => @temp2,
				              :quantity => cart_item.quantity,
				              :order_id => @order.id
				             )
			@temp1 = @temp1 + @temp2
			@temp3 = @temp3 + 1
		end
		@order.update(:totalPrice => @temp1)
		@order.update(:no_OfItems => @temp3)

		@cart_items.destroy_all
		redirect_to products_path
	end

	def destroy

		# binding.break
		@order = Order.find(params[:id])
		@order_item = @order.order_items
		@order_item.destroy
		@order.destroy
		redirect_to order_items_path
	end


end


