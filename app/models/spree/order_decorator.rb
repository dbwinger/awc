Spree::Order.class_eval do
  def store_pickup?
    # Check if all shipments are in-store pickup.
    shipments.each do |shipment|
      calc = shipment.shipping_method.calculator
      unless calc.type == "Spree::Calculator::Shipping::FlatRate" && calc.preferred_amount == 0
        return false
      end
    end
    return true
  end

  def paying_in_person?
    payments.any? && payments.first.payment_method.type == 'Spree::PaymentMethod::Check'
  end

  def available_payment_methods
    @available_payment_methods = Spree::PaymentMethod.where(true)

    # Don't allow in-person payment method unless chose in-store pickup
    unless store_pickup?
      @available_payment_methods = @available_payment_methods.where("type <> 'Spree::PaymentMethod::Check'")
    end

    @available_payment_methods = @available_payment_methods.available(:front_end)
  end
end

