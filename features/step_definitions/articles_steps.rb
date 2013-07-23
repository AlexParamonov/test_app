Given(/^several articles exists$/i) do
  @articles = (1..5).map { FactoryGirl.create(:article) }
end

When(/^I visit an artiles page$/i) do
  visit articles_url
end

Then(/^I should see existing articles$/i) do
  @articles.each do |article|
    within(".articles") do
      should have_content article.title
    end
  end
end
