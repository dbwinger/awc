# This migration comes from spree_banner (originally 20131001104524)
class RenamePresentationToAltText < ActiveRecord::Migration
  def change
    rename_column :spree_banner_boxes, :presentation, :alt_text
  end
end
