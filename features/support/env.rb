# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'yaml'

DATA = YAML.load_file('./features/fixtures/data/data.yaml')
LOCATOR = YAML.load_file('./features/fixtures/data/locator.yaml')
CONFIG = YAML.load_file("./features/support/config/#{ENV['ENV_TYPE']}.yaml")

# Ruby CASE to set the webdriver
case ENV['BROWSER']
when 'firefox'
  @driver = :selenium
when 'chrome'
  @driver = :selenium_chrome
when 'headless'
  @driver = :selenium_chrome_headless
else
  puts 'Invalid Browser for this project'
end

Capybara.configure do |config|
  config.default_selector = :xpath
  config.default_driver = @driver
  config.app_host = CONFIG['url']
  config.default_max_wait_time = 10
end
