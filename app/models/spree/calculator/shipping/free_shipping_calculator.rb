module Spree
  module Calculator::Shipping
    class FreeShippingCalculator < ShippingCalculator
      # TODO: Seems Spree preferences would be the way to go with this, but couldn't seem to get that to work.
      def self.threshold
        (ENV['FREE_SHIPPING_THRESHOLD'] || 200).to_i
      end

      def self.description
        "Free over $#{threshold}"
      end

      def compute_package package
        0
      end

      def available?(package)
        total(package.contents) >= FreeShippingCalculator.threshold
      end
    end
  end
end

