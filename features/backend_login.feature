Feature: Login for backend

  Background:
    Given there is an administrator

  Scenario: Login as an administrator
    When I log in to the backend
    Then I should see that I am logged in
