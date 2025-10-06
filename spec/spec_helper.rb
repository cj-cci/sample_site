require 'rspec'
require 'capybara/rspec'
require 'selenium-webdriver'

config_ru_content = File.read(File.dirname(__dir__) + '/config.ru').gsub(/use Rack::Chunked\n\s*/, '')
Capybara.app = eval("Rack::Builder.new {( " + config_ru_content + "\n )}")

Capybara.javascript_driver = :selenium_chrome_headless

RSpec.configure do |config|
  config.mock_with :rspec
end
