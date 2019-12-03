ENV["RACK_ENV"] = 'test'
require './app'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
Capybara.app = BookmarkManager

require_relative './setup_test_database'

ENV['ENVIRONMENT'] = 'test'

RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end
