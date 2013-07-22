When(/^I visit a homepage$/) do
  visit "/"
end

Then(/^I should see application name$/) do
  page.should have_content("Test App")
end
