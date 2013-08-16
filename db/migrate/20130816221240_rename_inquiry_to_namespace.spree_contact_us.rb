# This migration comes from spree_contact_us (originally 20120423062304)
class RenameInquiryToNamespace < ActiveRecord::Migration
  def change
    rename_table :inquiries, :spree_inquiries
  end
end
