ENV['RAILS_ENV'] = 'test'
require './config/environment'
require 'minitest/spec'
require 'database_cleaner'
require 'rspec'
require 'email_spec'

DatabaseCleaner.strategy = :truncation
Spinach.hooks.before_scenario{ DatabaseCleaner.clean }
