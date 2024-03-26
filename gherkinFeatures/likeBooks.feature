
Feature: Like books

    Scenario: Like a book
    Given that I see a 'book item'
    When I click the like button
    Then the book is added to my liked books

    Scenario: Unlike a book 
    Given that I have clicked a book
    When I click the like button 
    Then  the like is removed
    And the book is removed from my liked books

    Scenario: Invalid like
    Given that I have liked as many books as my libary's books
    When I click the like button
    Then I should see a message saying "You have liked too many books"

    Scenario: Like an unavailable book
    Given that a book is under 'exchange process'
    When I click the like button on this book
    Then I should see a message saying "The book is under exchange process"