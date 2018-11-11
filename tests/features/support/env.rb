require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'helper.rb'


World(PageObjects)
World(Helper)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 5
end