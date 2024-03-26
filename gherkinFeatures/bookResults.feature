
Feature: Manage book results

  Scenario: Filter books by author, location, and category
    Given I am on the home page 
    When I filter books by the following parameters:
      | Parameter | Value         |
      | Author    | John Doe      |
      | Location  | Thessaloniki  |
      | Category  | Fiction       |
    Then I should see the filtered search results
    And I should be able to scroll down the page to view more books

  Scenario: Sort books by rating or alphabetically
    Given I am on the home page  
    When I sort books by the following criteria:
      | Criteria  | Value       |
      | Rating    | High to Low |
      | Alphabet  | A to Z      |
    Then I should see the sorted search results
    And I should be able to scroll down the page to view more books
