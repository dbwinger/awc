# This migration comes from spree_contact_us (originally 20130117221019)
class AddHttpInfoToInquiries < ActiveRecord::Migration
  def change
    add_column :spree_inquiries, :http_user_agent, :string
    add_column :spree_inquiries, :http_remote_addr, :string
  end
end
