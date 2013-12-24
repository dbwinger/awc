Spree::Product.class_eval do
  def self.update_variant_prices_by_price_modifiers
    all.each do |product|
      product.variants.each do |variant|
        variant.option_values.each do |option_value|
        end
      end
    end
  end
end

