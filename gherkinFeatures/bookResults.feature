
Feature: manage book results
    Scenario: filter by author,location,category
        Given that I am in the home page
        When I filter by author,location,category
        Then I should see the search results
        And I should be able to scroll down the page
    Scenario: sort by rating, alphabet 
        Given that I am in the home page
        When I sort by rating, alphabet
        Then I should see the search results
        And I should be able to scroll down the page

Feature: Manage book results

  Scenario: Filter books by author, location, and category
    Given I am on the home page of the book e-shop
    When I filter books by the following parameters:
      | Parameter | Value         |
      | Author    | John Doe      |
      | Location  | New York      |
      | Category  | Fiction       |
    Then I should see the filtered search results
    And I should be able to scroll down the page to view more books

  Scenario: Sort books by rating or alphabetically
    Given I am on the home page of the book e-shop
    When I sort books by the following criteria:
      | Criteria  | Value       |
      | Rating    | High to Low |
      | Alphabet  | A to Z      |
    Then I should see the sorted search results
    And I should be able to scroll down the page to view more books
