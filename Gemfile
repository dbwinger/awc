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
  gem 'jquery-rails'
  # Required by spree_flexi_variants, but for some reason js doesn't seem to be available.
  gem 'jquery-validation-rails'
end

group :development, :test do
  gem 'debugger'
  gem 'dotenv-rails'
end

group :assets do
end

# I believe it's important that these be before the theme, and the theme be before spree to override in correct order.
gem 'spree_minicart', :github => 'dbwinger/spree_minicart'
gem 'spree_bootstrap', github: 'dbwinger/spree_bootstrap', branch: '2-0-stable'
gem 'bootstrap-kaminari-views', github: 'matenia/bootstrap-kaminari-views'
gem 'spree_contact_us', :github => 'dbwinger/spree_contact_us', :branch => '2-0-stable'
gem 'monologue', :github => 'dbwinger/monologue'
#gem "monologue", :path => "../monologue"
gem 'spree_flexi_variants', :github=>'dbwinger/spree_flexi_variants'

gem 'spree_serenity_theme', :github => 'dbwinger/spree_serenity_theme'
#gem 'spree_serenity_theme', :path => "../spree_serenity_theme"

gem 'spree', '2.0.4'
gem 'spree_gateway', :github => 'spree/spree_gateway', :branch => '2-0-stable'
gem 'spree_auth_devise', :github => 'spree/spree_auth_devise', :branch => '2-0-stable'
gem 'spree_static_content', :github => "spree/spree_static_content", :branch => '2-0-stable'
gem 'spree_editor', :github => 'spree/spree_editor'

gem "sentry-raven"
gem 'newrelic_rpm'

gem 'bcrypt-ruby', '~> 3.0.0'
gem "ckeditor"
gem "paperclip"

