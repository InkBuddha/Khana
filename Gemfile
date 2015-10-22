source 'http://rubygems.org'


gem 'rails', 				'4.2.4'
gem 'sass-rails', 	'~> 5.0'
gem 'foundation-rails'
gem 'devise'
gem 'uglifier', 		'>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', 		'~> 2.0'
gem 'sdoc', 				'~> 0.4.0', group: :doc
gem 'bcrypt', 			'~> 3.1.7'

group :development, :test do
	gem 'sqlite3'
  gem 'byebug'
  gem 'spring'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :development do
  gem 'web-console', '~> 2.0'
end

group :test do
	gem 'faker'
	gem 'capybara'
	gem 'guard-rspec'
	gem 'launchy'
end

# /!\ Run $ bundle install --without production /!\
group :production do
	gem 'pg'
	gem 'rails_12factor'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
