class CartItemsController < ApplicationController

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
		redirect_to products_path
	end
end
