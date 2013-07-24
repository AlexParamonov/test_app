Feature: Contact
  As a enduser
  I want to see a list of my contacts
  So I'll be able to contact people

  Scenario: Add new contact
    Given no contacts exists
    When I add a new contact
    Then I should see it on a list

  Scenario: Display a contact
    Given a contact exists
    When I open a contact
    Then I should details about it

  Scenario: Edit a contact
    Given a contact exists
    When I edit a contact
      And I open a contact
    Then I should see new contact data
      And I should not see old contact data

  Scenario: Contact listing
    Given several contacts exists
    When I open a list of contacts
    Then I should see my contacts
