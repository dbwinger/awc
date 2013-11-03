# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  config.use_s3 = true
  config.s3_bucket = "awc-#{Rails.env}"
  config.s3_access_key = ENV["S3_ACCESS_KEY"]
  config.s3_secret = ENV["S3_SECRET"]
  config.track_inventory_levels = false
  config.allow_backorder_shipping = true
  config.company = true
end

Rails.application.config.after_initialize do
  Spree::Config.facebook_app_id = ENV["FACEBOOK_APP_ID"]
end

Spree.user_class = "Spree::User"

