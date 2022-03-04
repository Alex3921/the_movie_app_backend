source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.5'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'pg', '~> 1.2', '>= 1.2.3'
gem 'puma', '~> 5.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
gem 'active_model_serializers', '~> 0.10.2'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'rack-cors'
gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'
gem 'httparty', '~> 0.20.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
