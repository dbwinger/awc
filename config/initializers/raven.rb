require 'raven'

if Rails.env.production? || Rails.env.staging?
  Raven.configure do |config|
    config.dsn = 'https://804e0ad2e48347c48a31ecb007843dc6:0f251cbfd74b410e940056165bfe204c@app.getsentry.com/37922'
    config.timeout = 10
    config.open_timeout = 10
  end
end
