
Feature: search books
    Scenario: search by title,author,username
        Given that I am in the home page
        When I search for a book by title,author,username
        Then I should see the search results
        And I should be able to scroll down the page
        And I should be able to use filters
    Scenario: search book that doesn't exist
        Given that I am in the home page
        When I search for a book that doesn't exist
        Then I should see a message saying "No matching results found"
        And I should be prompted to try again