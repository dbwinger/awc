Spree::OptionValue.class_eval do
  attr_accessible :name, :presentation, :option_values_attributes, :weight, :price_modifier

  def product_variant_with_default_other_options product_id, option_type_name
    # If not weight type, use the default weight so price changes are accurate.
    if option_type_name.downcase == 'grind'
      v = variants.where(:product_id => product_id, :weight => 16)
    # If weight dropdown, use variant with whole bean so it doesn't add to the price
    elsif option_type_name.downcase == 'weight'
      v = Spree::Variant.where(:product_id => product_id).where("EXISTS (SELECT * FROM spree_option_values_variants WHERE variant_id = spree_variants.id AND option_value_id = #{self.id}) AND EXISTS (SELECT * FROM spree_option_values_variants WHERE variant_id = spree_variants.id AND option_value_id = (SELECT id FROM spree_option_values WHERE name ILIKE 'whole bean'))")
    end
    v.first
  end
end

