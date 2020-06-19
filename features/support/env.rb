# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'yaml'

DATA = YAML.load_file('./features/fixtures/data/data.yaml')
LOCATOR = YAML.load_file('./features/fixtures/data/locator.yaml')

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
  config.default_driver = :selenium_chrome # configurar a variavel @driver
  config.app_host = 'https://magento.nublue.co.uk'
  config.default_max_wait_time = 10
end
