Feature: Create articles
  As a blogger
  In order to share my content with everyone
  I would like to be able to create Articles

  Background:
    Given I visit the landing page
    When I click "new article" link

  Scenario: Successfully create an article
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should be on "Learning Rails 5" page
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Blogger doesn't enter a title for the article
    When I fill in "Content" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should see "Title can't be blank"
    Then I should not see "Content can't be blank"

  Scenario: Blogger doesn't enter content for the article
    When I fill in "Title" with "Learning Rails 5"
    And I click "Create Article" button
    Then I should see "Content can't be blank"
    Then I should not see "Title can't be blank"