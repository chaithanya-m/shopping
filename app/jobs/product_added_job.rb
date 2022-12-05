class ProductAddedJob < ApplicationJob
  queue_as :urgent

  def perform(id)
    order = Order.find(id)
    # binding.break
   OrdermailMailer.with(order: order ).orderPlaced_email.deliver_later

    # Do something later
  end
end
