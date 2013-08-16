# This migration comes from spree_contact_us (originally 20090623182411)
class CreateInquiries < ActiveRecord::Migration
  def self.up
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :inquiry_type
      t.string :order_no
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :inquiries
  end
end
