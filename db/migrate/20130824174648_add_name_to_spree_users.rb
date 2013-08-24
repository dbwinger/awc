class AddNameToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :name, :string
  end
end

