Given(/^no contacts exists$/) do

end

When(/^I add a new contact$/) do
  visit new_contact_url
  within ".new_contact" do
    fill_in "contact_first_name", with: "Gerald"
    fill_in "contact_last_name", with: "Gates"
    fill_in "contact_email", with: "gerald.gates@gmail.com"
    fill_in "contact_phone_number", with: "30685011041"

    find(".submit").click
  end
end

Then(/^I should see it on a list$/) do
    pending
end
