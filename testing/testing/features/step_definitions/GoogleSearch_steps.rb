require 'watir-webdriver'
require 'byebug'

Given(/^I am in the Google website$/) do
capabilities = Selenium::WebDriver::Remote::Capabilities.new
  capabilities.browser_name = :firefox 
  @browser = Watir::Browser.new(  
    :remote,  
    :url => "http://10.0.2.2:5555/wd/hub",
    :desired_capabilities => capabilities)  
  @browser.goto 'http://www.google.com'
end

When(/^I add "(.*?)" into the search box$/) do |item|
    @browser.text_field(:name, 'q').send_keys(item)
end

When(/^I click the Search Button$/) do
  @browser.button(:name, 'btnG').click
end

Then(/^"(.*?)" should be mentioned in the results$/) do |item|
  sleep 1
  @browser.title.should include('hola mundo')
  @browser.quit
end
