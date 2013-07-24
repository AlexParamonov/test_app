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
  visit contacts_url
  within ".contacts" do
    page.should have_content("Gerald")
    page.should have_content("Gates")
  end
end

Given(/^several contacts exists$/) do
  @contacts = 5.times.map do
    FactoryGirl.create(:contact)
  end
end

When(/^I open a list of contacts$/) do
  visit contacts_url
end

Then(/^I should see my contacts$/) do
  within ".contacts" do
    @contacts.each do |contact|
      page.should have_content(contact.first_name)
      page.should have_content(contact.last_name)
    end
  end
end


Given(/^a contact exists$/) do
  @contact = FactoryGirl.create(:contact)
end

When(/^I open a contact$/) do
  visit contact_url(@contact)
end

Then(/^I should details about it$/) do
  within ".contact" do
    page.should have_content(@contact.first_name)
    page.should have_content(@contact.last_name)
    page.should have_content(@contact.email)
    page.should have_content(@contact.phone_number)
  end
end

When(/^I edit a contact$/) do
  visit edit_contact_url(@contact)

  within ".contact" do
    fill_in "contact_first_name", with: "Gerald"
    fill_in "contact_last_name", with: "Gates"
    fill_in "contact_email", with: "gerald.gates@gmail.com"
    fill_in "contact_phone_number", with: "30685011041"

    find(".submit").click
  end
end

Then(/^I should see new contact data$/) do
  within ".contact" do
    page.should have_content("Gerald")
    page.should have_content("Gates")
    page.should have_content("gerald.gates@gmail.com")
    page.should have_content("30685011041")
  end
end

Then(/^I should not see old contact data$/) do
  within ".contact" do
    page.should_not have_content(@contact.first_name)
    page.should_not have_content(@contact.last_name)
    page.should_not have_content(@contact.email)
    page.should_not have_content(@contact.phone_number)
  end
end
