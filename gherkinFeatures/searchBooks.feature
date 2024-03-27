
Feature: Search books

    Scenario: Search by title, author, username
        Given that I am in the home page
        When I search for a book by <keywords>
        Then I should see the search results
        And I should be able to scroll down the page

        Examples:
          | keywords                    |
          | "Harry Potter" (title)      |
          | "J.K. Rowling" (author)     |
          | "booklover123" (username)   |

    Scenario: Search book that doesn't exist
        Given that I am in the home page
        When I search for a book with <keywords> 
        Then I should see a message saying "No matching results found"
        And I should be prompted to try again

        Examples:
          | keywords             |
          | "Interstellar"       |
          | "blah blah"          |
          | "user123"            |

