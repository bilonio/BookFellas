
Feature: Control availability of books
    Scenario: make book available
        Given that
    Scenario: make book unavailable
        Given that I am in the edit mode of a book
        When I click to make the book unavailable
        Then I should see a message saying "Book is now unavailable for exchange"
        And I should not be able to see the book in the search results
    Scenario: book is already available
        Given that I am in the edit mode of a book
        And that the book is already available
        When I click to make the book available
        Then I should see a message saying "Book is already available"
        And I should be able to see the book in the search results
    Scenario: book is already unavailable
        Given that I am in the edit mode of a book
        And that the book is already unavailable
        When I click to make the book unavailable
        Then I should see a message saying "Book is already unavailable"
        And I should not be able to see the book in the search results