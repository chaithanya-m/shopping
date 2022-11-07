class OrderItemsController < ApplicationController

	def index
		@order = Order.last || Order.create
		@order_items = @order.order_items
	end

	def create
		@order= Order.last || Order.create
		@cart = Cart.last
		@cart_items = @cart.cart_items
		@temp1 = @order.totalPrize
		@cart_items.each do |cart_item|
			@temp2 = cart_item.product.productPrize * cart_item.quantity
			OrderItem.create!(:product_id => cart_item.product.id,
				              :productPrize => @temp2,
				              :order_id => @order.id
				             )
			@temp1 = @temp1 + @temp2
		end
		@order.update(:totalPrize => @temp1)

		@cart_items.destroy_all
		redirect_to products_path
	end

	def destroy

		# binding.break
		@order = Order.last
		@order_item = @order.order_items.find(params[:id])

		@temp1 = @order.totalPrize - @order_item.productPrize
		@order.update(:totalPrize => @temp1)

		@order_item.destroy
		redirect_to order_items_path
	end


end


