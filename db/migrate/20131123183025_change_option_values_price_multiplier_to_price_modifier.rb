class ChangeOptionValuesPriceMultiplierToPriceModifier < ActiveRecord::Migration
  def up
    remove_column :spree_option_values, :price_multiplier
    add_column :spree_option_values, :price_modifier, :string
  end

  def down
    add_column :spree_option_values, :price_multiplier, :float
    remove_column :spree_option_values, :price_modifier
  end
end

