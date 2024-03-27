
  Scenario: Sort books by rating or alphabetically
    Given I am on the home page  
    When I sort books by the following criteria:
      | Criteria  | Value       |
      | Rating    | High to Low |
      | Alphabet  | A to Z      |
    Then I should see the sorted search results
    And I should be able to scroll down the page to view more books