Feature: Event registration

  Scenario: Register for an event
    Given there is an event
    When I register for an event
    Then I receive a confirmation e-mail
