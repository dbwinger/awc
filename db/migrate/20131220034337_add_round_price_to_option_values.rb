class AddRoundPriceToOptionValues < ActiveRecord::Migration
  def up
    add_column :spree_option_values, :round_price, :boolean, default: true
    Spree::Variant.all.each do |v|
      v.price = v.price.round
      v.save!
    end
  end

  def down
    remove_column :spree_option_values, :round_price
  end
end

