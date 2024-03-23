
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