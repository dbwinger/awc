module ApplicationHelper
  def option_type_options_for_select option_type
    option_type
    dropdown_options = option_type.option_values.map do |ov|
      # Get a variant for the product with that option_value with default other options
      variant = ov.product_variant_with_default_other_options(@product.id, option_type.name)
      [ "#{ov.presentation} #{variant_price variant}", ov.id ] if variant
    end
    options_for_select(dropdown_options.compact)
  end
end

