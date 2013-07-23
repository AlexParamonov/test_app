Given(/^Several articles exists$/) do
  @articles = (1..5).map { FactoryGirl.create(:article) }
end

When(/^I visit an artiles page$/) do
  visit articles_url
end

Then(/^I should listing of artiles$/) do
  @articles.each do |article|
    within(".articles") do
      should have_content article.title
    end
  end
end
