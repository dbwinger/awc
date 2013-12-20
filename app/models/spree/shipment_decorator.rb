Spree::Shipment.class_eval do
  def determine_state(order)
    return 'canceled' if order.canceled?
    return 'pending' unless order.can_ship?
    return 'pending' if inventory_units.any? &:backordered?
    return 'shipped' if state == 'shipped'
    # Allow to mark 'Shipped' if not paid, but paying in person
    if order.paid? || order.payments.first.payment_method.type == 'Spree::PaymentMethod::Check'
      'ready'
    else
      'pending'
    end
  end
end

