# Carregar variáveis de ambiente customizadas
require_relative '../../config/env_variaveis'

# Configurações do Capybara
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

puts "App URL configurada: #{ENV['APP_URL']}"

Capybara.configure do |config|
  config.app_host = ENV['APP_URL'] # Pegando a variável definida no arquivo `env_variaveis.rb`
  config.default_driver = :custom_chrome
  config.default_max_wait_time = 5
end


Capybara.register_driver :custom_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new

  options.add_argument('--disable-gpu')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--start-maximized')
  options.add_argument('--disable-infobars')
  options.add_argument('--disable-extensions')

  options.add_argument('--headless') if ENV['HEADLESS'] == 'true'

    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end


Before('@preserve_session') do
  Capybara.current_session.driver.browser.manage.delete_all_cookies
end



After do |scenario|
  if scenario.failed?
    timestamp = Time.now.strftime('%Y-%m-%d_%H-%M-%S')
    filename = "screenshot_#{scenario.name.gsub(' ', '_')}_#{timestamp}.png"
    page.save_screenshot(filename)
    puts "Screenshot salvo para o cenário: #{scenario.name} em #{filename}"
  end
end

AfterStep do
  Capybara.using_wait_time(3) do
  end
end
