source 'http://rubygems.org'
ruby '2.2.6'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'     # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

# gem 'sqlite3'                           # Use sqlite3 as the database for Active Record
gem 'pg'
gem 'taps'
gem 'puma', '~> 3.0'                      # Use Puma as the app server
gem 'uglifier', '>= 1.3.0'                # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.2'              # Use CoffeeScript for .coffee assets and views
gem 'figaro', '~> 1.1', '>= 1.1.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Da Emails!!
gem 'mail_form'

# Rich text editor
gem 'trix'

gem 'jquery-rails'                        # Use jquery as the JavaScript library
gem 'turbolinks', '~> 5'                  # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.5'                  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'redis', '~> 3.0'                   # Use Redis adapter to run Action Cable in production
gem 'bcrypt', '~> 3.1.7'                  # Use ActiveModel has_secure_password

# gem 'capistrano-rails', group: :development     # Use Capistrano for deployment

# style:
gem 'bootstrap-sass', '~> 3.3.6'
gem 'bootstrap-glyphicons'
gem 'sass-rails', '~> 5.0'                # Use SCSS for stylesheets
source 'https://rails-assets.org' do
gem 'rails-assets-tether', '>= 1.1.0'
end

group :production do
  gem'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
