source 'https://rubygems.org'
ruby "2.0.0"

gem 'rails', '3.2.15'

gem 'pg'
gem 'thin'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'therubyracer', '>= 0.11.4'

  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-rails'
  # using older version because of errors I think related to https://github.com/nervo/yuicompressor/issues/2
  # gem 'yui-compressor', '0.11.0'
end

group :development, :test do
  gem 'debugger'
  gem 'dotenv-rails'
  gem 'spring'
  gem 'letter_opener'
  gem 'spring'
end

group :production do
  gem "sentry-raven"
  gem 'newrelic_rpm'
end

# I believe it's important that these be before the theme, and the theme be before spree to override in correct order.
gem 'spree_social_products', :github => 'spree/spree_social_products', :branch => '2-0-stable'
gem 'spree_minicart', :github => 'dbwinger/spree_minicart'
gem 'spree_bootstrap', github: 'dbwinger/spree_bootstrap', branch: '2-0-stable'
gem 'bootstrap-kaminari-views', github: 'matenia/bootstrap-kaminari-views'
gem 'spree_contact_us', :github => 'dbwinger/spree_contact_us', :branch => '2-0-stable'
gem 'monologue', :github => 'jipiboily/monologue', :branch => '0-3-stable'
#gem "monologue", :path => "../monologue"

gem 'spree_serenity_theme', :github => 'dbwinger/spree_serenity_theme'
#gem 'spree_serenity_theme', :path => "../spree_serenity_theme"

gem 'spree', '2.0.7'
gem 'spree_active_shipping', :github => "spree/spree_active_shipping", :branch => '2-0-stable'
gem 'spree_gateway', :github => 'spree/spree_gateway', :branch => '2-0-stable'
gem 'spree_auth_devise', :github => 'spree/spree_auth_devise', :branch => '2-0-stable'
gem 'spree_static_content', :github => "spree/spree_static_content", :branch => '2-0-stable'
gem 'spree_editor', :github => 'spree/spree_editor'
gem 'spree_address_book', :github => 'dbwinger/spree_address_book', :branch => '2-0-stable-bootstrap'
gem 'spree_banner', :github => 'dbwinger/spree_banner'
gem 'spree_reorder', :github => 'dbwinger/spree-reorder', :branch => '2-0-stable'

gem 'bcrypt-ruby', '~> 3.0.0'
gem "ckeditor"
gem "paperclip"
gem 'htmlentities'

#gem 'i18n', '0.6.5'

