Feature: Event registration

  Scenario: Register for an event
    Given there is an event
    When I register for the event
    And I confirm my registration
    Then I see a message that my registration is confirmed
    And I see my name in the list of participants

  Scenario: Unable to confirm twice
    Given there is an event
    When I register for the event
    And I confirm my registration
    And I confirm my registration
    Then I see a message that my registration was already confirmed

  Scenario: Unable to register twice
    Given there is an event
    When I register for the event
    And I register for the event
    Then I see a message that someone already registered with my address
