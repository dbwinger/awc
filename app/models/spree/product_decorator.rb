Spree::Product.class_eval do
  def update_variant_prices_by_price_modifiers
    variants.each do |variant|
      variant.option_values.each do |option_value|
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      product = find_by_permalink(row["permalink"]) || new
      product.attributes = row.to_hash.slice(*accessible_attributes)
      product.save!
      product.update_variante_prices_by_price_modifiers
    end
  end
end

