source 'https://rubygems.org'
ruby "2.0.0"

gem 'rails', '3.2.14'

gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', '>= 0.11.4'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

group :development, :test do
  gem 'debugger'
  gem 'dotenv-rails'
end

# I believe it's important that these 5 be before the theme, and the theme be before spree to override in correct order.
gem 'spree_bootstrap', github: 'jdutil/spree_bootstrap', branch: '2-0-stable'
gem 'bootstrap-kaminari-views', github: 'matenia/bootstrap-kaminari-views'
gem 'spree_contact_us', :github => 'dbwinger/spree_contact_us', :branch => '2-0-stable'
gem "monologue", :git => 'https://github.com/dbwinger/monologue.git'
gem 'spree_minicart', :github => 'dbwinger/spree_minicart'

# TODO: Use this once done development on theme
#gem 'spree_serenity_theme', :git => 'https://github.com/dbwinger/spree_serenity_theme.git'
gem 'spree_serenity_theme', :path => "../spree_serenity_theme"

gem 'spree', '2.0.4'
gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => '2-0-stable'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '2-0-stable'
gem 'spree_static_content', :git => "https://github.com/spree/spree_static_content.git", :branch => '2-0-stable'
gem 'spree_editor', :github => 'spree/spree_editor'

gem "sentry-raven"

gem 'bcrypt-ruby', '~> 3.0.0'
gem "ckeditor"
gem "paperclip"

