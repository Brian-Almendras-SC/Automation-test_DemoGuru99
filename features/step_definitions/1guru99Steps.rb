#Given I am on the sample homepage
Given(/^I am on the sample homepage$/) do
  @page.registerGuru99.setAnotherDir()
end

#When I enter blank details for Register
When(/^I enter blank details for Register$/) do
	@page.registerGuru99.fillinEmail("")
end

#And Press the "Submit" button
When(/^Press the "([^"]*)" button$/) do |buttonName|
  click_button(buttonName)
end

#Then error "Email ID must not be blank" is show
Then(/^error "([^"]*)" is show$/) do |errorMessage|
  page.has_content?(errorMessage)
  sleep 2
end

#When I enter "carlos@test.com" for Register
When(/^I enter "([^"]*)" for Register$/) do |userName|
@page.registerGuru99.fillinEmail(userName)
end

#Then I should see the following table:
Then(/^I should see the following table:$/) do |table|
  @res=@page.registerGuru99.verificyInToThePage()
  puts @res
  if (@res)
    puts("Into the details")
  else
    fail("Not into the deatils")
  end
  @page.registerGuru99.findTable(table)
end


Then(/^I should see mngr(\d+) id$/) do |arg1|
  purchasedLabel=@page.registerGuru99.findUsernameID(arg1)
  #purchasedLabel = find(:xpath, '/html/body/table/tbody/tr[4]/td[2]', :text => /\Amngr\d\d\d\d\d\d\z/)
end
    