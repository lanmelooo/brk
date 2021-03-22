require 'capybara'
require 'cucumber' 
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'pry'
require 'httparty'
require 'date'
require 'rubocop'
require_relative 'page_helper.rb'

World(Pages)

$ambiente_front = (ENV['ENV'] || 'hml_front')

$url_front = if $ambiente_front == 'ENV'
    'url desejada'
  else
    'url desejada'
  end

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = :selenium  
  config.default_max_wait_time = 18
  Capybara.page.driver.browser.manage.window.maximize
end