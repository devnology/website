Feature: Managing blogs

  Background:
    Given I am a logged in administrator

  Scenario: Create a blog post
    When I add a blog post
    Then I see the blog post listed

  Scenario: Edit a blog post
    Given there is a blog post
    When I change the title of the blog post
    Then I see the new title of the blog post listed
