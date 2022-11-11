class CartItemsController < ApplicationController

	def index
		 @cart = Cart.last || Cart.create
         @cart_items = @cart.cart_items
	end
	def create
		@product = Product.find(params[:product_id])

		@cart= Cart.last || Cart.create

		@cart_item = @cart.cart_items.create(:product_id => @product.id)
		redirect_to products_path
		
	end
	def destroy

		# binding.break

		@cart = Cart.last
		@cart_item = @cart.cart_items.find(params[:id])
		@cart_item.destroy
		redirect_to cart_items_path
	end

	def increment
		@cart_item = CartItem.find(params[:id])
		@cart_item.increment!(:quantity)
		redirect_to cart_items_path
	end
	def decrement
		@cart_item = CartItem.find(params[:id])
		if @cart_item.quantity <=1
			redirect_to cart_items_path
		else
		@cart_item.decrement!(:quantity)
		redirect_to cart_items_path
		end
	end
end
