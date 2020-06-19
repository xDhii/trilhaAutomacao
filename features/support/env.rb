# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

case ENV['BROWSER']
when 'firefox'
  @driver = :selenium
when 'chrome'
  @driver = :selenium_chrome
when 'headless'
  @driver = :selenium_chrome_headless
else
  puts 'Invalid Browser'
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome # configurar a variável @driver apos finalizar a automação
  config.app_host = 'https://magento.nublue.co.uk/'
  config.default_max_wait_time = 10
end
