source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
# gem 'mini_racer', platforms: :ruby
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap', '~> 4.1', '>= 4.1.3'
gem 'haml-rails', '~> 1.0'
gem 'jquery-rails'
gem 'devise', '~> 4.5'
gem 'simple_form', '~> 4.0', '>= 4.0.1'
gem 'carrierwave', '~> 1.2', '>= 1.2.3'
gem 'sidekiq', '~> 5.2', '>= 5.2.1'
gem 'fog-aws'
gem 'mini_magick', '~> 4.8'
gem 'closure_tree', github: 'ClosureTree/closure_tree'
gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'
# gem 'capistrano-rails', group: :development
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # fetching rspec against the master branch
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
  end
  gem 'factory_bot', '~> 4.11'
  gem 'rspec_junit_formatter', '~> 0.4.1'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '~> 3.6'
  gem 'database_cleaner', '~> 1.7'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
  gem 'faker', '~> 1.9', '>= 1.9.1'
end
