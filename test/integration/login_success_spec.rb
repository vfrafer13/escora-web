require 'selenium-webdriver'
Selenium::WebDriver::Chrome.path = 'C:\chromedriver.exe'
require_relative ('../login_info.rb')

describe "Given good credentials" do
  it "should login" do
    # Open @browser
    @browser = Selenium::WebDriver.for :chrome
    @browser.manage.window.maximize
    # Navigate to url
    @browser.navigate.to ($url)
    # Enter email
    @browser.find_element(css: 'input[type="email"]').send_keys($email)
    # Enter password
    @browser.find_element(css: 'input[type="password"]').send_keys($password)
    # Click on login button
    @browser.find_element(css: 'input[type="submit"]').click
    # Check if success message is displayed
    $wait.until{@browser.find_element(css: 'a[href*="sign_out"]').displayed?}
    expect(@browser.find_element(css: 'a[href*="sign_out"]').text).to eql("SALIR")
    # Close @browser
    @browser.quit
    puts "Finished test"
  end
end