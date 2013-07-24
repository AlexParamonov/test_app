Feature: Contact
  As a enduser
  I want to see a list of my contacts
  So I'll be able to contact people

  Scenario: Add new contact
    Given no contacts exists
    When I add a new contact
    Then I should see it on a list
