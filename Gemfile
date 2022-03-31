source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.1.7'

gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'sassc', '~> 2.1.0'
gem 'jquery-rails'
gem 'rails-ujs', '~> 0.1.0'
gem 'devise', '~> 4.7', '>= 4.7.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'sqlite3', '< 1.4'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'sqlite3', '< 1.4'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


group :production do
	gem 'pg'
	gem 'rails_12factor', '~> 0.0.3'
end
