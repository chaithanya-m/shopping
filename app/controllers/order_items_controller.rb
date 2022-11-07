class OrderItemsController < ApplicationController

	def index
		@order = Order.last || Order.create
		@order_items = @order.order_items
	end

	def create
		@order= Order.last || Order.create
		@cart = Cart.last
		@cart_items = @cart.cart_items
		@cart_items.each do |cart_item|
			OrderItem.create!(:product_id => cart_item.product.id,:productPrize => cart_item.product.productPrize, :order_id => @order.id)
		end
		@cart_items.destroy_all
		redirect_to products_path
	end

	def destroy

		# binding.break
		@order = Order.last
		@order_items = @order.order_items.find(params[:id])
		@order_items.destroy
		redirect_to products_path
	end


end
