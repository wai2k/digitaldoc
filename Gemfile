source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '3.2.13' 

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'pg'
end
#gem 'foreigner', :git => 'git://github.com/matthuhiggins/foreigner.git'

gem 'jquery-rails'
gem 'haml'
gem 'paperclip'
gem 'rails_autolink'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  #gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end
group :test do
  gem 'rspec-rails'
end
