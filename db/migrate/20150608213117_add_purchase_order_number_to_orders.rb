class AddPurchaseOrderNumberToOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :po_number, :string
  end
end
