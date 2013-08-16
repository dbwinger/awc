# This migration comes from spree_contact_us (originally 20111030160333)
class AddPhoneNumberToInquiries < ActiveRecord::Migration
  def self.up
    add_column :inquiries, :phone_number, :string
  end

  def self.down
    remove_column :inquiries, :phone_number
  end
end
