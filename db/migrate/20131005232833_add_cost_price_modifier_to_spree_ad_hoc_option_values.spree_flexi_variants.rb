# This migration comes from spree_flexi_variants (originally 20130513221643)
class AddCostPriceModifierToSpreeAdHocOptionValues < ActiveRecord::Migration
  def change
    add_column :spree_ad_hoc_option_values, :cost_price_modifier, :decimal, :precision => 8, :scale => 2
  end
end