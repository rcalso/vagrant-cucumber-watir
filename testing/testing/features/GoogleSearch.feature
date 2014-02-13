#encoding: utf-8

Feature: When I go to the Google search page, and search for an item,
	I expect to see some reference to that item in the result summary.

  Scenario: Search in Google
    Given I am in the Google website
    When I add "cuttie cats" into the search box
    And I click the Search Button
    Then "cuttie cats" should be mentioned in the results