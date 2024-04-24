source "https://rubygems.org"

gem "jets", "~> 5.0.12"


# Use mysql as the database for Active Record
gem "mysql2", "~> 0.5"
gem "zeitwerk", ">= 2.6.12"

# development and test groups are not bundled as part of the deployment
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rack'
  gem 'puma'
end

group :test do
  gem 'rspec'
end
