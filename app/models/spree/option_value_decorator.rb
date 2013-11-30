Spree::OptionValue.class_eval do
  attr_accessible :name, :presentation, :option_values_attributes, :weight, :price_modifier

  def product_variant_with_default_weight_unless_weight_type product_id
    # If not weight type, use the default so price changes are accurate.
    v = variants.where(:product_id => product_id)
    v = v.where(:weight => 16) if option_type.name.downcase != "weight"
    v.first
  end
end

