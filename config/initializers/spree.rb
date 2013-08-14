# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  config.use_s3 = true
  config.s3_bucket = ENV["S3_BUCKET"]
  config.s3_access_key = ENV["S3_ACCESS_KEY"]
  config.s3_secret = ENV["S3_SECRET"]
end

Spree.user_class = "Spree::User"

