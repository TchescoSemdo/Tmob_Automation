Before do
    @driver = Capybara.current_session
  end
  
  After do |scenario|
    if scenario.failed?
      screenshot_path = "reports/screenshots/#{scenario.name.gsub(' ', '_')}.png"
      page.save_screenshot(screenshot_path)
      attach(screenshot_path, 'image/png')
    end
  end
  

