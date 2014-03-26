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

  Scenario: Unable to register for an event that is not open for registration
    Given there is an event that is not open for registration
    When I view the event
    Then I see a message that the event is not open for registration

  Scenario: Unable to register for a full event
    Given there is a full event
    When I view the event
    Then I see a message that the event is full

  Scenario: Unregister of an event
    Given I have registered for an event
    When I unregister for the event
    And I confirm my unregistration
    Then I see a message that my unregistration is confirmed
    And I see that my name is not in the list of participants anymore

  Scenario: Unable to unregister twice
    Given I have registered for an event
    When I unregister for the event
    And I confirm my unregistration
    And I confirm my unregistration
    Then I see a message that I am using an invalid token

  Scenario: Unable to unregister with an incorrect e-mail address
    Given I have registered for an event
    When I unregister for the event with an incorrect e-mail address
    Then I see a message that there is no registration with my e-mail address
