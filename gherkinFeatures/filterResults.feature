
Feature: Filter book results

  Scenario: Results filtered successfully
    Given I am on the home page 
    When I filter books by the following parameters:
      | Parameter | Value         |
      | Author    | John Doe      |
      | Location  | Thessaloniki  |
      | Category  | Fiction       |
    Then I should see the filtered search results
    And I should be able to scroll down the page to view more books

    Scenario: No matching results
    Given I am on the home page
    When I filter books by the following parameters:
      | Parameter | Value         |
      | Author    | Jane Doe      |
      | Location  | Athens        |
      | Category  | Non-Fiction   |
    Then I should see a message that says "No matching results found"

