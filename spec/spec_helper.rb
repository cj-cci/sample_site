require 'rspec'
require 'capybara/rspec'
require 'selenium-webdriver'

config_ru_content = File.read(File.dirname(__dir__) + '/config.ru')
config_ru_content = config_ru_content.gsub('use Rack::Chunked', '')

Capybara.app = eval("Rack::Builder.new {( " + config_ru_content + "\n )}")

Capybara.javascript_driver = :selenium_chrome_headless
Capybara.server = :webrick

RSpec.configure do |config|
  config.mock_with :rspec
end
