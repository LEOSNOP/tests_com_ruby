require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

World(PageObjects)
World(Helper)

Capybara.configure do |config|
  #selenium   selenium_chrome  selenium_chrome_headless
  config.default_driver = :selenium_chrome
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 5
end