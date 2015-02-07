Spree::Stock::Estimator.class_eval do
  def shipping_rates(package, frontend_only = true)
    shipping_rates = Array.new
    shipping_methods = shipping_methods(package)
    return [] unless shipping_methods

    shipping_methods.each do |shipping_method|
      cost = calculate_cost(shipping_method, package)
      rate = shipping_method.shipping_rates.new(:cost => cost) unless cost.nil?
      shipping_rates << rate unless rate.nil?
    end

    # Only added reverse! to make UPS default
    shipping_rates.sort_by! { |r| r.cost || 0 }.reverse!

    unless shipping_rates.empty?
      if frontend_only
        shipping_rates.each do |rate|
          rate.selected = true and break if rate.shipping_method.frontend?
        end
      else
        shipping_rates.first.selected = true
      end
    end

    shipping_rates
  end
end
