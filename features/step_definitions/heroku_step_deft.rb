#step definitions

Given(/^I go to "([^"]*)" page$/) do |page| 
    @browser = Watir::Browser.new
    @browser.goto(page)
end

Given(/^I click the "([^"]*)" link$/) do |link| 
    @browser.a(text: link).click
end

Given(/^I set the username "([^"]*)"$/) do |username|
    @browser.input(id: 'username').send_keys(username)
end

Given(/^I set the password "([^"]*)"$/) do |password|
    @browser.input(id: 'password').send_keys(password)
end

Given(/^I click the "([^"]*)" button$/) do |button| 
    #Busqueda primero browser + tag + atributo + valor del atrubuto
    @browser.button(text: button).click
end

Then(/^I should see the message "([^"]*)"$/) do |message|
    expect(@browser.h2(text: message).text).to eq(message) 
end







