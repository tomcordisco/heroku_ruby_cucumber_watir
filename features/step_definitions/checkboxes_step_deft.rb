Given(/^I go to "([^"]*)" page$/) do |page| 
    @browser = Watir::Browser.new
    @browser.goto(page)
end

Given(/^I click the "([^"]*)" link$/) do |link| 
    @browser.a(text: link).click
end