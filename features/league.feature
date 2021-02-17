Feature: League maintenance
  Scenario: I create a league
    Given I am logged in as a user
    And I visit the Leagues page
    When I click link 'Create a new league'
    Then I am on the 'Create a new league' page
    When I fill 'Name' with 'Test league'
    And I click 'Create League'
    Then I am on the 'Leagues' page
    And 'Test league' is present

  Scenario: I delete a league
    Given a league called 'Test league' exists
    And I am logged in as a user
    And I visit the Leagues page
    When I click link 'Test league'
    Then I am on the 'Test league' page
    When I click the 'Delete' button and accept the alert
    Then I am on the 'Leagues' page
    And 'Test league' is not present

  Scenario: I start a draft
    Given a league called 'Test league' exists
    And I am logged in as a user
    And I visit the Leagues page
    And 'Test league' is present
    When I click link 'Test league'
    Then I am on the 'Test league' page
    And 'Waiting for draft to start' is present
    When I click the 'Start' button and accept the alert
    Then I am on the 'Test league' page
    And 'Waiting for draft to start' is not present
