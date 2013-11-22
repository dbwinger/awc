class RemoveFlexiVariants < ActiveRecord::Migration
  def up
    drop_table :spree_ad_hoc_option_types
    drop_table :spree_ad_hoc_option_values
    drop_table :spree_product_customizations
    drop_table :spree_product_customization_types
    drop_table :spree_ad_hoc_variant_exclusions
    drop_table "spree_customized_product_options"
    drop_table "spree_customizable_product_options"
    drop_table "spree_excluded_ad_hoc_option_values"
    drop_table :spree_ad_hoc_option_values_line_items
  end

  def down
  end
end

