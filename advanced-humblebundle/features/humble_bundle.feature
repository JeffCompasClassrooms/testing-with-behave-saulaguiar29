Feature: Humble Bundle E-Commerce Platform
  As a potential customer
  I want to browse and explore Humble Bundle offerings
  To find bundles and deals that interest me

  Background:
    Given I am on the Humble Bundle homepage

  Scenario: User can access the Humble Bundle homepage
    Then I should see the Humble Bundle logo
    And the page title should contain "Humble Bundle"
    And I should see navigation menu options

  Scenario: User can view current bundles
    When I navigate to the bundles page
    Then I should see available bundles displayed
    And each bundle should show a title
    And each bundle should display pricing information

  Scenario: User can navigate to games section
    When I click on the games navigation link
    Then I should be on the games page
    And I should see game listings

  Scenario: User can navigate to books section
    When I click on the books navigation link
    Then I should be on the books page
    And I should see book bundle offerings

  Scenario: User can navigate to software section
    When I click on the software navigation link
    Then I should be on the software page
    And I should see software bundle listings

  Scenario: User can search for specific content
    When I search for "rpg"
    Then I should see search results
    And the results should be related to my search term

  Scenario: User can view bundle details
    When I navigate to the bundles page
    And I click on the first available bundle
    Then I should see the bundle detail page
    And I should see bundle contents listed
    And I should see pricing tiers

  Scenario: User can see charity information
    When I navigate to the bundles page
    And I click on the first available bundle
    Then I should see charity information displayed
    And I should see how proceeds are distributed

  Scenario: User can navigate to store
    When I click on the store navigation link
    Then I should be on the store page
    And I should see individual items for purchase

  Scenario: User can filter store items
    When I navigate to the store
    And I apply a price filter
    Then the displayed items should update
    And I should see filtered results

  Scenario: User can sort store items
    When I navigate to the store
    And I sort items by popularity
    Then the items should be reordered
    And I should see the sorting applied

  Scenario: User can view Humble Choice subscription
    When I click on the choice navigation link
    Then I should be on the Humble Choice page
    And I should see subscription plan information
    And I should see featured monthly games

  Scenario: User can access help and support
    When I navigate to the support section
    Then I should see help topics
    And I should see contact options
    And I should see FAQ information

  Scenario: User can view account signup options
    When I click on the sign up button
    Then I should see registration options
    And I should see email signup form
    And I should see social login options

  Scenario: User can browse by category
    When I select a category from the menu
    Then I should see items in that category
    And the category name should be displayed
    And I should see relevant filtering options