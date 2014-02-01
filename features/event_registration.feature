Feature: Event registration

  Scenario: Register for an event
    Given there is an event
    When I register for an event
    And I confirm my registration
    Then I see a message that my registration is confirmed
    And I see my name in the list of participants

  Scenario: Confirm twice
    Given there is an event
    When I register for an event
    And I confirm my registration
    And I confirm my registration again
    Then I see a message that my registration was already confirmed
