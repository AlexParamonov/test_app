Feature: Test cucumber installation
  As a developer
  I want to make sure that cucumber is installed correctly
  So that I run a test scenario

  Scenario: Visit a homepage
    When I visit a homepage
    Then I should see application name
