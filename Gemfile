source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.3.13'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby, group: :production

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
gem "omniauth"
gem 'omniauth-identity'
gem 'kaminari'
gem 'seed-fu', '~> 2.3'
gem 'puma', '~> 2.9.0'
group :development do
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano3-puma'

  gem 'quiet_assets'
  gem 'guard-rails'
  gem 'annotate', ">=2.6.0"

  # for generat admin scaffold
  gem 'rails-admin-scaffold'

end
group :development, :test do
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'guard-livereload'
  gem 'i18n-tasks', '~> 0.2.10'
end
gem 'gitlab'

gem 'bootstrap-sass', '~> 3.1.1'

gem 'simple_form'

gem 'wizcms_article' ,  :git => 'git@git.wityun.com:wizcloud/wizcms_article.git'
# gem 'wizcms_article', '~> 0.0.10' ,  path: "/Users/abc/Documents/wizcms_article"

gem 'wizcms_link', git: "git@git.wityun.com:wizcloud/wizcms_link.git" #, path: "/Users/backer/workspace/wisdom cloud co./projects/wizcms_link"

gem 'rails_kindeditor', git: "https://github.com/zmbacker/rails_kindeditor.git", :branch => 'asset-host-bug'