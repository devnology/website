Feature: Managing events

  Scenario: Create an event
    Given I am on the backend
    When I add an event
    Then I see the event listed
