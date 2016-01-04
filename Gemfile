source 'http://rubygems.org'

# ruby '2.1.7'

gem 'rails', 				'4.2.4'
gem 'sass-rails', 	'~> 5.0'
gem 'font-awesome-rails'
gem 'simple_calendar', '~> 2.0'
gem 'will_paginate'
gem 'modernizr-rails'
gem 'neat'
gem 'paperclip'
gem 'cocoon'
gem 'uglifier', 		'>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'turbolinks'
gem 'jbuilder', 		'~> 2.0'
gem 'sdoc', 				'~> 0.4.0', group: :doc
gem 'bcrypt', 			'~> 3.1.7'

group :development, :test do
	gem 'sqlite3'
  gem 'byebug'
  gem 'spring'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'capybara-email'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

group :development do
  gem 'web-console', '~> 2.0'
  # gem 'better_errors'
  # gem 'binding_of_caller'
end

group :test do
	gem 'faker'	
	gem 'guard-rspec'
	gem 'launchy'
end

# /!\ Run $ bundle install --without production /!\
group :production do
	gem 'pg'
	gem 'rails_12factor'
  gem 'puma'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
