require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

puts "App URL: #{ENV['APP_URL']}"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = ENV['APP_URL']
end

AfterStep do
  sleep 5
end

After do |scenario|
  if scenario.failed?
    page.save_screenshot("screenshot_#{scenario.name.gsub(' ', '_')}.png")
    puts "Screenshot salvo para o cenário: #{scenario.name}"
  end
end
