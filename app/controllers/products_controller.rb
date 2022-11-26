class ProductsController < ApplicationController
  def index
    # binding.break
    Product.paginates_per 5
    page_number = params[:page] || 1 

    if params[:orderby] == "1" 
       @products = Product.order(productPrice: :desc).page(page_number)
    elsif params[:orderby]== "0"
       @products = Product.order(productPrice: :asc).page(page_number)
    else
       @products = Product.order(:productName).page(page_number)
    end         

    # @products = Product.order(productPrice: :params[:price]).page(page_number)

  end
 
  def search
    # binding.break 
    Product.paginates_per 3
    page_number = params[:page] || 1 
    @products = Product.where("productName LIKE ?", "%#{params[:search]}%").page(page_number)
    
    render 'index'
    # redirect_to products_path(@products)
  end

end
