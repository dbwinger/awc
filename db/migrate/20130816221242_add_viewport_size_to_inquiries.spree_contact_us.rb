# This migration comes from spree_contact_us (originally 20130123161159)
class AddViewportSizeToInquiries < ActiveRecord::Migration
  def change
    add_column :spree_inquiries, :client_viewport_size, :string, :length => 15
  end
end
