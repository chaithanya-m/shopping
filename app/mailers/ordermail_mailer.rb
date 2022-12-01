class OrdermailMailer < ApplicationMailer
	 default from: 'chaithanyamadduru123@gmail.com'

  def orderPlaced_email
    @order = params[:order]
    @url  = 'http://localhost:3000/order_items'
    mail(to: @order.user.email, subject: 'Your order is placed')
  end
end
