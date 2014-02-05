Feature: Managing events

  Background:
    Given I am a logged in administrator

  Scenario: Create an event
    When I add an event
    Then I see the event listed
