Given(/^I am on the Mercury Tours homepage$/) do
    @page.registerTravel.setAnotherDir()
end

Given(/^I click the "([^"]*)" link$/) do |linkText|
  click_link(linkText)
end

When(/^I enter the required fields as show below$/) do |table|
  sleep(10)
  @page.registerTravel.findTable(table)
end

When(/^send my registration form$/) do
  @page.registerTravel.clickInRegisterButton()
end

Then(/^the confirmation screen is show$/) do
  @page.registerTravel.confirmationLogin(page)
end

Then(/^my user name is "([^"]*)"$/) do |userName|
  @page.registerTravel.checkCorrectUserName(userName,page)
end

Given(/^I enter my user and password$/) do
  @page.registerTravel.fillWithEnvData
end

When(/^I press the "([^"]*)" button$/) do |arg1|
  @page.registerTravel.clickInTheButton
end


Then(/^the login successfully message is displayed$/) do
  @page.registerTravel.verificyLoginSucessfully(page)
end


When(/^I press the Submit button$/) do
  @page.registerTravel.clickInSubmitButton
end
