# This migration comes from spree (originally 20130805043440)
class CreateSpreeNewAdjustments < ActiveRecord::Migration
  def change
    create_table :spree_new_adjustments do |t|

      t.timestamps
    end
  end
end
