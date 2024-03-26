
Feature: Search books

    Scenario: Search by title, author, username
        Given that I am in the home page
        When I search for a book by <criteria>
        Then I should see the search results
        And I should be able to scroll down the page
        And I should be able to use filters

        Examples:
          | criteria                    |
          | title: "Harry Potter"       |
          | author: "J.K. Rowling"      |
          | username: "booklover123"    |

    Scenario: Search book that doesn't exist
        Given that I am in the home page
        When I search for a book that doesn't exist
        Then I should see a message saying "No matching results found"
        And I should be prompted to try again

        Examples:
          | search_term          |
          | "Invalid Book Title" |
          | "Nonexistent Author" |
          | "Unknown User"       |
