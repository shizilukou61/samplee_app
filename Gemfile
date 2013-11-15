source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'bootstrap-sass', '2.3.2.0'

gem 'bcrypt-ruby', '3.0.1'

# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
group :development, :test do
  gem 'sqlite3', '1.3.8'
  gem 'rspec-rails', '2.13.1' #这个gem放在了开发组中,这样可以使用Rspec相关的生成器
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess','0.3.6'
end  			      #不用单独安装rspec（是rspec-rails的依赖件,会自动安装）	


group :test do
  gem 'selenium-webdriver', '2.35.1' #这个是capybara的依赖库
  gem 'capybara', '2.1.0'     #可以使用类似英语中的句发编写模拟与应用程序交互的代码。
  gem 'libnotify', '0.8.0'
  gem 'factory_girl_rails', '4.2.1'
end

# Use SCSS for stylesheets
#gem 'sass-rails', '~> 4.0.0'
gem 'sass-rails', '4.0.1'

# Use Uglifier as compressor for JavaScript assets
#gem 'uglifier', '>= 1.3.0'
gem 'uglifier', '2.1.1'

# Use CoffeeScript for .js.coffee assets and views
#gem 'coffee-rails', '~> 4.0.0'
gem 'coffee-rails', '4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
#gem 'jquery-rails'
gem 'jquery-rails', '2.2.1'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
gem 'turbolinks', '1.1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder', '~> 1.2'
gem 'jbuilder', '1.0.2'

#group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  # gem 'sdoc', require: false
#end

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'pg', '0.15.1'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
