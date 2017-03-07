# frozen_string_literal: true
source 'https://rubygems.org'

gem 'hanami', '1.0.0.beta2'
gem 'rake'

gem 'dry-initializer'
gem 'haml'

# gem 'hanami-model', '~> 1.0.0.beta2'
# gem 'pg'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'rubocop'
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'capybara'
  gem 'rspec'
end

group :production do
  # gem 'puma'
end
