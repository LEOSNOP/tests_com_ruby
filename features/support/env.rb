require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'

Capybara.configure do |config|
  #selenium   selenium_chrome  selenium_chrome_headless
  config.default_driver = :selenium_chrome
  config.app_host ='https://americanas.com.br'
  config.default_max_wait_time = 5

end