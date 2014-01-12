Spree::OrderMailer.class_eval do
  def received_email(order)
    @order = order.respond_to?(:id) ? order : Spree::Order.find(order)
    subject = "#{Spree::Config[:site_name]} Order Received: ##{@order.number}"
    mail(to: from_address, from: from_address, subject: subject)
  end
end

