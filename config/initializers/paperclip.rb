Paperclip::Attachment.default_options.merge!(
  :storage => :s3,
  :s3_credentials => {
    :bucket => "awc-#{Rails.env}",
    :access_key_id => ENV['S3_ACCESS_KEY'],
    :secret_access_key => ENV['S3_SECRET']
  }
)

