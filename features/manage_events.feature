Feature: Managing events

  Background:
    Given I am a logged in administrator

  Scenario: Create an event
    When I add an event
    Then I see the event listed

  Scenario: Edit an event
    Given there is an event
    When I change the title of the event
    Then I see the new name of the event listed
