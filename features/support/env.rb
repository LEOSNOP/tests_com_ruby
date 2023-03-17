require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require_relative 'helper.rb'

World(PageObjects)

Capybara.configure do |config|
  #selenium   selenium_chrome  selenium_chrome_headless
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 5

end