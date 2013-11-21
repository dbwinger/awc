# This migration comes from spree_banner (originally 20120323174800)
class BannerNamespace < ActiveRecord::Migration
  def change
    rename_table :banners, :spree_banner_boxes
  end
end
