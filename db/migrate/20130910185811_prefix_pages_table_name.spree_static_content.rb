# This migration comes from spree_static_content (originally 20111201184855)
class PrefixPagesTableName < ActiveRecord::Migration
  def change
    if table_exists?(:pages)
      rename_table :pages, :spree_pages
    end
  end
end
