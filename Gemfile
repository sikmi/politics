source 'https://rubygems.org'

# framework
gem 'rails', '4.1.6'
gem 'mysql2'
gem "therubyracer"

# template
gem 'slim-rails'

# minimize
gem 'uglifier', '>= 1.3.0'

# css
gem 'sass-rails', '~> 4.0.4'
gem 'compass-rails'
gem "font-awesome-rails"

# js
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'lodash-rails'
gem 'angularjs-rails'
gem 'headroom-rails', github: 'sikmi/headroom-rails'
gem 'turbolinks'

# view
gem 'cells'

# decorator
gem 'draper', '~> 1.3'

# model
gem 'enumerize'
gem 'paranoia', '~> 2.0'
gem 'aasm'

# 画像
gem 'carrierwave'
gem 'fog'
gem 'mini_magick'

# json
gem 'oj'
gem 'oj_mimic_json'
gem 'jbuilder', '~> 2.0'

# 認証
gem 'devise'
gem 'cancan'

# index関係
gem 'kaminari'
gem 'ransack'

group :development do
  gem "bullet"
  gem 'sdoc', '~> 0.4.0'
  gem 'rails-erd', github: 'paulwittmann/rails-erd', branch: 'mavericks'
  gem 'spring'

  gem 'nokogiri'
  # 実験用のメール
  gem 'letter_opener'
  gem 'letter_opener_web', '~> 1.2.0'

  # deploy
  gem 'capistrano', '~> 3.2.0'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano3-unicorn'
end

group :test do
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false
  gem 'capybara', '~> 2.4.1'
end

group :production do
  # 本番運用
  gem 'unicorn'
  gem 'unicorn-rails'
end
