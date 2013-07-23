Feature: Articles
  As a enduser
  I want to see a list of articles
  To be able to explore web content

  Scenario: Article listing
    Given Several articles exists
    When I visit an artiles page
    Then I should listing of artiles
