class AddWeightPriceModifiersToOptionValues < ActiveRecord::Migration
  def change
    add_column :spree_option_values, :weight, :integer
    add_column :spree_option_values, :price_multiplier, :float
  end
end

